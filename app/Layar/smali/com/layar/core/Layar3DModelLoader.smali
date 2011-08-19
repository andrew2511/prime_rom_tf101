.class public Lcom/layar/core/Layar3DModelLoader;
.super Ljava/lang/Object;
.source "Layar3DModelLoader.java"


# static fields
.field public static final BYTE_ORDER:Ljava/nio/ByteOrder; = null

.field public static final VERSION:I = 0x1

.field public static final VERSION_ANIMATED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileSize(Lcom/layar/core/Layar3DModel;)I
    .locals 5
    .parameter "model"

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, size:I
    add-int/lit8 v2, v2, 0x1f

    .line 44
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    if-eqz v4, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v4, v4

    if-lt v1, v4, :cond_8

    .line 52
    .end local v1           #i:I
    :cond_0
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz v4, :cond_3

    .line 59
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    if-eqz v4, :cond_6

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, faceFields:I
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v4, v4

    if-lez v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_4
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length v4, v4

    if-lez v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_5
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v4, v4

    mul-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    .line 69
    .end local v0           #faceFields:I
    :cond_6
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    if-eqz v4, :cond_7

    .line 70
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    .line 72
    :cond_7
    return v2

    .line 47
    .restart local v1       #i:I
    :cond_8
    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v4}, Lcom/layar/core/Texture;->getSize()I

    move-result v4

    move v3, v4

    .line 48
    .local v3, textureSize:I
    :goto_1
    add-int/lit8 v4, v3, 0x2c

    add-int/2addr v2, v4

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v3           #textureSize:I
    :cond_9
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1
.end method

.method public static getMinimumVersion(Lcom/layar/core/Layar3DModel;)I
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x2

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v1}, Lcom/layar/core/Texture;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 34
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadModel(Ljava/io/InputStream;)Lcom/layar/core/Layar3DModel;
    .locals 1
    .parameter "stream"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/layar/core/Layar3DModelLoader;->loadModel(Ljava/io/InputStream;Lcom/layar/core/ErrorHandler;)Lcom/layar/core/Layar3DModel;

    move-result-object v0

    return-object v0
.end method

.method public static loadModel(Ljava/io/InputStream;Lcom/layar/core/ErrorHandler;)Lcom/layar/core/Layar3DModel;
    .locals 19
    .parameter "stream"
    .parameter "errorHandler"

    .prologue
    .line 250
    new-instance v12, Lcom/layar/core/Layar3DModel;

    invoke-direct {v12}, Lcom/layar/core/Layar3DModel;-><init>()V

    .line 252
    .local v12, model:Lcom/layar/core/Layar3DModel;
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 254
    .local v4, channel:Ljava/nio/channels/ReadableByteChannel;
    const/16 p0, 0x1f

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0
    move-result-object p0

    .line 255
    .local p0, header:Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 256
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 257
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 259
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    int-to-char v7, v5

    .line 260
    .local v7, idL:C
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    int-to-char v5, v5

    .line 261
    .local v5, id3:C
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    int-to-char v6, v6

    .line 263
    .local v6, idD:C
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 264
    .local v17, version:I
    const/16 v8, 0x4c

    if-ne v7, v8, :cond_0

    const/16 v7, 0x33

    if-ne v5, v7, :cond_0

    .end local v7           #idL:C
    const/16 v5, 0x44

    if-eq v6, v5, :cond_2

    .line 265
    .end local v5           #id3:C
    :cond_0
    if-eqz p1, :cond_1

    .line 266
    const-string p0, "File does not contain a valid Layar3D model."

    .end local p0           #header:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/layar/core/ErrorHandler;->handleError(Ljava/lang/String;)V

    .line 267
    :cond_1
    const/16 p0, 0x0

    .line 478
    .end local v4           #channel:Ljava/nio/channels/ReadableByteChannel;
    .end local v6           #idD:C
    .end local v17           #version:I
    .end local p1
    :goto_0
    return-object p0

    .line 269
    .restart local v4       #channel:Ljava/nio/channels/ReadableByteChannel;
    .restart local v6       #idD:C
    .restart local v17       #version:I
    .restart local p0       #header:Ljava/nio/ByteBuffer;
    .restart local p1
    :cond_2
    const/4 v5, 0x2

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_4

    .line 270
    if-eqz p1, :cond_3

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #header:Ljava/nio/ByteBuffer;
    const-string v4, "Layar3D version "

    .end local v4           #channel:Ljava/nio/channels/ReadableByteChannel;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, " is not supported."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/layar/core/ErrorHandler;->handleError(Ljava/lang/String;)V

    .line 272
    :cond_3
    const/16 p0, 0x0

    goto :goto_0

    .line 275
    .restart local v4       #channel:Ljava/nio/channels/ReadableByteChannel;
    .restart local p0       #header:Ljava/nio/ByteBuffer;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 276
    .local v11, mCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 277
    .local v16, vCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 278
    .local v14, tCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 279
    .local v13, nCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 280
    .local v6, fCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 282
    .local v15, uCount:I
    if-lez v11, :cond_5

    .line 283
    move v0, v11

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$Material;

    move-object/from16 p0, v0

    .end local p0           #header:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    .line 284
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v9, p0

    .end local p0           #i:I
    .end local p1
    .local v9, i:I
    :goto_1
    if-lt v9, v11, :cond_c

    .line 374
    .end local v9           #i:I
    :cond_5
    if-lez v16, :cond_6

    .line 375
    move/from16 v0, v16

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    .line 376
    mul-int/lit8 p0, v16, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 377
    .local v5, vertices:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 378
    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 379
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 381
    const/16 p0, 0x0

    .restart local p0       #i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .local p1, i:I
    :goto_2
    move/from16 v0, p1

    move/from16 v1, v16

    if-lt v0, v1, :cond_10

    .line 397
    .end local v5           #vertices:Ljava/nio/ByteBuffer;
    .end local p1           #i:I
    :cond_6
    if-lez v14, :cond_7

    .line 398
    move v0, v14

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$Coord2D;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    .line 399
    mul-int/lit8 p0, v14, 0x2

    mul-int/lit8 p0, p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 400
    .local v5, textureCoords:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 401
    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 402
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 404
    const/16 p0, 0x0

    .restart local p0       #i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    :goto_3
    move/from16 v0, p1

    move v1, v14

    if-lt v0, v1, :cond_17

    .line 412
    .end local v5           #textureCoords:Ljava/nio/ByteBuffer;
    .end local p1           #i:I
    :cond_7
    if-lez v13, :cond_8

    .line 413
    move v0, v13

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    .line 414
    mul-int/lit8 p0, v13, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 415
    .local v5, normals:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 416
    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 417
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 419
    const/16 p0, 0x0

    .restart local p0       #i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    :goto_4
    move/from16 v0, p1

    move v1, v13

    if-lt v0, v1, :cond_18

    .line 428
    .end local v5           #normals:Ljava/nio/ByteBuffer;
    .end local p1           #i:I
    :cond_8
    if-lez v6, :cond_a

    .line 429
    const/16 p0, 0x1

    .line 430
    .local p0, faceFields:I
    const/16 p1, 0x0

    .line 431
    .local p1, hasNormals:Z
    const/4 v7, 0x0

    .line 433
    .local v7, hasTextures:Z
    if-lez v13, :cond_1e

    .line 434
    const/16 p1, 0x1

    .line 435
    add-int/lit8 p0, p0, 0x1

    move/from16 v5, p1

    .line 437
    .end local p1           #hasNormals:Z
    .local v5, hasNormals:Z
    :goto_5
    if-lez v14, :cond_9

    .line 438
    const/16 p1, 0x1

    .line 439
    .end local v7           #hasTextures:Z
    .local p1, hasTextures:Z
    add-int/lit8 p0, p0, 0x1

    move/from16 v7, p1

    .line 442
    .end local p1           #hasTextures:Z
    .restart local v7       #hasTextures:Z
    :cond_9
    move v0, v6

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$Face;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    .line 443
    mul-int p0, p0, v6

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0           #faceFields:I
    move-result-object p1

    .line 444
    .local p1, faces:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 445
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 446
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 448
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v8, p0

    .end local v11           #mCount:I
    .end local p0           #i:I
    .local v8, i:I
    :goto_6
    if-lt v8, v6, :cond_19

    .line 459
    .end local v5           #hasNormals:Z
    .end local v7           #hasTextures:Z
    .end local v8           #i:I
    .end local p1           #faces:Ljava/nio/ByteBuffer;
    :cond_a
    if-lez v15, :cond_b

    .line 460
    move v0, v15

    new-array v0, v0, [Lcom/layar/core/Layar3DModel$UseMaterial;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    .line 461
    mul-int/lit8 p0, v15, 0x2

    mul-int/lit8 p0, p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 462
    .local v5, useMaterial:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 464
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 466
    const/16 p0, 0x0

    .end local v6           #fCount:I
    .restart local p0       #i:I
    :goto_7
    move/from16 v0, p0

    move v1, v15

    if-lt v0, v1, :cond_1d

    .line 474
    .end local v5           #useMaterial:Ljava/nio/ByteBuffer;
    .end local p0           #i:I
    :cond_b
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .end local v4           #channel:Ljava/nio/channels/ReadableByteChannel;
    .end local v13           #nCount:I
    .end local v14           #tCount:I
    .end local v15           #uCount:I
    .end local v16           #vCount:I
    .end local v17           #version:I
    :goto_8
    move-object/from16 p0, v12

    .line 478
    goto/16 :goto_0

    .line 285
    .restart local v4       #channel:Ljava/nio/channels/ReadableByteChannel;
    .restart local v6       #fCount:I
    .restart local v9       #i:I
    .restart local v11       #mCount:I
    .restart local v13       #nCount:I
    .restart local v14       #tCount:I
    .restart local v15       #uCount:I
    .restart local v16       #vCount:I
    .restart local v17       #version:I
    :cond_c
    const/16 p0, 0x2c

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 286
    .local p0, material:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 287
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 288
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 290
    new-instance v10, Lcom/layar/core/Layar3DModel$Material;

    invoke-direct {v10}, Lcom/layar/core/Layar3DModel$Material;-><init>()V

    .line 291
    .local v10, m:Lcom/layar/core/Layar3DModel$Material;
    new-instance p1, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct/range {p1 .. p1}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    .line 292
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->r:I

    .line 293
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->g:I

    .line 294
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->b:I

    .line 295
    new-instance p1, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct/range {p1 .. p1}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    .line 296
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->r:I

    .line 297
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->g:I

    .line 298
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->b:I

    .line 299
    new-instance p1, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct/range {p1 .. p1}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    .line 300
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->r:I

    .line 301
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->g:I

    .line 302
    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$Color;->b:I

    .line 303
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    move/from16 v0, p1

    move-object v1, v10

    iput v0, v1, Lcom/layar/core/Layar3DModel$Material;->specularExponent:I

    .line 305
    const/16 p1, 0x2

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    .line 307
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 308
    .local p0, textureType:I
    packed-switch p0, :pswitch_data_0

    .line 370
    .end local p0           #textureType:I
    :cond_d
    :goto_9
    :pswitch_0
    move-object v0, v12

    iget-object v0, v0, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    move-object/from16 p0, v0

    aput-object v10, p0, v9

    .line 284
    add-int/lit8 p0, v9, 0x1

    .end local v9           #i:I
    .local p0, i:I
    move/from16 v9, p0

    .end local p0           #i:I
    .restart local v9       #i:I
    goto/16 :goto_1

    .line 312
    .local p0, textureType:I
    :pswitch_1
    const/16 p0, 0x4

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0           #textureType:I
    move-result-object p0

    .line 313
    .local p0, sb:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 314
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 315
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 317
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 318
    .local p0, textureSize:I
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 320
    .local p0, texture:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 321
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 322
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 323
    new-instance p1, Lcom/layar/core/StaticTexture;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .end local p0           #texture:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/core/StaticTexture;-><init>([B)V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    goto :goto_9

    .line 475
    .end local v4           #channel:Ljava/nio/channels/ReadableByteChannel;
    .end local v6           #fCount:I
    .end local v9           #i:I
    .end local v10           #m:Lcom/layar/core/Layar3DModel$Material;
    .end local v11           #mCount:I
    .end local v13           #nCount:I
    .end local v14           #tCount:I
    .end local v15           #uCount:I
    .end local v16           #vCount:I
    .end local v17           #version:I
    :catch_0
    move-exception p0

    goto/16 :goto_8

    .line 327
    .restart local v4       #channel:Ljava/nio/channels/ReadableByteChannel;
    .restart local v6       #fCount:I
    .restart local v9       #i:I
    .restart local v10       #m:Lcom/layar/core/Layar3DModel$Material;
    .restart local v11       #mCount:I
    .restart local v13       #nCount:I
    .restart local v14       #tCount:I
    .restart local v15       #uCount:I
    .restart local v16       #vCount:I
    .restart local v17       #version:I
    .local p0, textureType:I
    :pswitch_2
    const/16 p0, 0x8

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0           #textureType:I
    move-result-object p0

    .line 328
    .local p0, ab:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 329
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 330
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 332
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 333
    .local p1, loopCount:I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 335
    .local v8, frameCount:I
    new-instance p0, Lcom/layar/core/AnimatedTexture;

    .end local p0           #ab:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/layar/core/AnimatedTexture;-><init>(I)V

    .line 336
    .local p0, at:Lcom/layar/core/AnimatedTexture;
    invoke-virtual/range {p0 .. p1}, Lcom/layar/core/AnimatedTexture;->setLoopCount(I)V

    .line 338
    const/16 p1, 0x0

    .local p1, f:I
    move/from16 v5, p1

    .end local p1           #f:I
    .local v5, f:I
    :goto_a
    if-lt v5, v8, :cond_e

    .line 355
    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    goto :goto_9

    .line 340
    :cond_e
    const/16 p1, 0x8

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 341
    .local v7, fb:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 342
    invoke-interface {v4, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 343
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 345
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 346
    .local p1, delay:I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 348
    .local v7, size:I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 349
    .local v7, image:Ljava/nio/ByteBuffer;
    sget-object v18, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 350
    invoke-interface {v4, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 351
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 352
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .end local v7           #image:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v7

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/core/AnimatedTexture;->setFrame(I[BI)V

    .line 338
    add-int/lit8 p1, v5, 0x1

    .end local v5           #f:I
    .local p1, f:I
    move/from16 v5, p1

    .end local p1           #f:I
    .restart local v5       #f:I
    goto :goto_a

    .line 360
    .end local v5           #f:I
    .end local v8           #frameCount:I
    .local p0, material:Ljava/nio/ByteBuffer;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 361
    .local p0, textureSize:I
    if-lez p0, :cond_d

    .line 362
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 363
    .local p0, texture:Ljava/nio/ByteBuffer;
    sget-object p1, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual/range {p0 .. p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 364
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 365
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    new-instance p1, Lcom/layar/core/StaticTexture;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .end local p0           #texture:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/core/StaticTexture;-><init>([B)V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    goto/16 :goto_9

    .line 382
    .end local v9           #i:I
    .end local v10           #m:Lcom/layar/core/Layar3DModel$Material;
    .local v5, vertices:Ljava/nio/ByteBuffer;
    .local p1, i:I
    :cond_10
    new-instance p0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct/range {p0 .. p0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    .line 383
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord3D;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 384
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 385
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 386
    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    aput-object p0, v7, p1

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    if-ge v7, v8, :cond_11

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    move v8, v0

    iput v8, v7, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 389
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    if-ge v7, v8, :cond_12

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    move v8, v0

    iput v8, v7, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 390
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    if-ge v7, v8, :cond_13

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    move v8, v0

    iput v8, v7, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 391
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    if-le v7, v8, :cond_14

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    move v8, v0

    iput v8, v7, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 392
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    if-le v7, v8, :cond_15

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    move v8, v0

    iput v8, v7, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 393
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    move v7, v0

    iget-object v8, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    if-le v7, v8, :cond_16

    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    move/from16 p0, v0

    .end local p0           #c:Lcom/layar/core/Layar3DModel$Coord3D;
    move/from16 v0, p0

    move-object v1, v7

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 381
    :cond_16
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto/16 :goto_2

    .line 405
    .local v5, textureCoords:Ljava/nio/ByteBuffer;
    :cond_17
    new-instance p0, Lcom/layar/core/Layar3DModel$Coord2D;

    invoke-direct/range {p0 .. p0}, Lcom/layar/core/Layar3DModel$Coord2D;-><init>()V

    .line 406
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord2D;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord2D;->u:I

    .line 407
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord2D;->v:I

    .line 408
    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    aput-object p0, v7, p1

    .line 404
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto/16 :goto_3

    .line 420
    .local v5, normals:Ljava/nio/ByteBuffer;
    :cond_18
    new-instance p0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct/range {p0 .. p0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    .line 421
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord3D;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 422
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 423
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 424
    iget-object v7, v12, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    aput-object p0, v7, p1

    .line 419
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move/from16 p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto/16 :goto_4

    .line 449
    .end local v11           #mCount:I
    .local v5, hasNormals:Z
    .local v7, hasTextures:Z
    .local v8, i:I
    .local p1, faces:Ljava/nio/ByteBuffer;
    :cond_19
    new-instance p0, Lcom/layar/core/Layar3DModel$Face;

    invoke-direct/range {p0 .. p0}, Lcom/layar/core/Layar3DModel$Face;-><init>()V

    .line 450
    .local p0, f:Lcom/layar/core/Layar3DModel$Face;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_b
    const/4 v10, 0x3

    if-lt v9, v10, :cond_1a

    .line 455
    iget-object v9, v12, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    .end local v9           #j:I
    aput-object p0, v9, v8

    .line 448
    add-int/lit8 p0, v8, 0x1

    .end local v8           #i:I
    .local p0, i:I
    move/from16 v8, p0

    .end local p0           #i:I
    .restart local v8       #i:I
    goto/16 :goto_6

    .line 451
    .restart local v9       #j:I
    .local p0, f:Lcom/layar/core/Layar3DModel$Face;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Face;->v:[I

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    aput v11, v10, v9

    .line 452
    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Face;->t:[I

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    aput v11, v10, v9

    .line 453
    :cond_1b
    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Face;->n:[I

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    aput v11, v10, v9

    .line 450
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 467
    .end local v6           #fCount:I
    .end local v7           #hasTextures:Z
    .end local v8           #i:I
    .end local v9           #j:I
    .end local p1           #faces:Ljava/nio/ByteBuffer;
    .local v5, useMaterial:Ljava/nio/ByteBuffer;
    .local p0, i:I
    :cond_1d
    new-instance p1, Lcom/layar/core/Layar3DModel$UseMaterial;

    invoke-direct/range {p1 .. p1}, Lcom/layar/core/Layar3DModel$UseMaterial;-><init>()V

    .line 468
    .local p1, u:Lcom/layar/core/Layar3DModel$UseMaterial;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$UseMaterial;->faceIndex:I

    .line 469
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Lcom/layar/core/Layar3DModel$UseMaterial;->material:I

    .line 470
    iget-object v6, v12, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    aput-object p1, v6, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_7

    .end local v5           #useMaterial:Ljava/nio/ByteBuffer;
    .restart local v6       #fCount:I
    .restart local v7       #hasTextures:Z
    .restart local v11       #mCount:I
    .local p0, faceFields:I
    .local p1, hasNormals:Z
    :cond_1e
    move/from16 v5, p1

    .end local p1           #hasNormals:Z
    .local v5, hasNormals:Z
    goto/16 :goto_5

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static save(Ljava/io/OutputStream;Lcom/layar/core/Layar3DModel;)V
    .locals 1
    .parameter "stream"
    .parameter "model"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/layar/core/Layar3DModelLoader;->save(Ljava/io/OutputStream;Lcom/layar/core/Layar3DModel;Lcom/layar/core/ErrorHandler;)V

    .line 77
    return-void
.end method

.method public static save(Ljava/io/OutputStream;Lcom/layar/core/Layar3DModel;Lcom/layar/core/ErrorHandler;)V
    .locals 6
    .parameter "stream"
    .parameter "model"
    .parameter "errorHandler"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/layar/core/Layar3DModelLoader;->getMinimumVersion(Lcom/layar/core/Layar3DModel;)I

    move-result v4

    .line 82
    .local v4, version:I
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 83
    if-eqz p2, :cond_0

    .line 84
    const-string v0, "This model contains animated textures. The .l3d file that is saved is only supported in Layar 4.0 and later."

    invoke-interface {p2, v0}, Lcom/layar/core/ErrorHandler;->handleError(Ljava/lang/String;)V

    .line 90
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p2

    .line 92
    .local p2, channel:Ljava/nio/channels/WritableByteChannel;
    const/16 p0, 0x1f

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0
    move-result-object p0

    .line 93
    .local p0, header:Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    invoke-interface {p2, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 105
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    .end local p0           #header:Ljava/nio/ByteBuffer;
    if-eqz p0, :cond_1

    .line 106
    const/4 p0, 0x0

    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .local v1, i:I
    :goto_6
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length p0, p0

    if-lt v1, p0, :cond_e

    .line 161
    .end local v1           #i:I
    :cond_1
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz p0, :cond_2

    .line 162
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 163
    .local v1, vertices:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 164
    const/4 p0, 0x0

    .restart local p0       #i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_7
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length p0, p0

    if-lt v0, p0, :cond_14

    .line 170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    invoke-interface {p2, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 174
    .end local v0           #i:I
    .end local v1           #vertices:Ljava/nio/ByteBuffer;
    :cond_2
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-eqz p0, :cond_3

    .line 175
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 176
    .local v1, textureCoords:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 177
    const/4 p0, 0x0

    .restart local p0       #i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    :goto_8
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length p0, p0

    if-lt v0, p0, :cond_15

    .line 182
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 183
    invoke-interface {p2, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 186
    .end local v0           #i:I
    .end local v1           #textureCoords:Ljava/nio/ByteBuffer;
    :cond_3
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz p0, :cond_4

    .line 187
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 188
    .local v1, normals:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    const/4 p0, 0x0

    .restart local p0       #i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    :goto_9
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length p0, p0

    if-lt v0, p0, :cond_16

    .line 195
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 196
    invoke-interface {p2, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 199
    .end local v0           #i:I
    .end local v1           #normals:Ljava/nio/ByteBuffer;
    :cond_4
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    if-eqz p0, :cond_6

    .line 200
    const/4 p0, 0x1

    .line 201
    .local p0, faceFields:I
    const/4 v0, 0x0

    .line 202
    .local v0, hasNormals:Z
    const/4 v2, 0x0

    .line 203
    .local v2, hasTextures:Z
    iget-object v1, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v1, v1

    if-lez v1, :cond_1c

    .line 204
    const/4 v0, 0x1

    .line 205
    add-int/lit8 p0, p0, 0x1

    move v1, v0

    .line 207
    .end local v0           #hasNormals:Z
    .local v1, hasNormals:Z
    :goto_a
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 208
    const/4 v0, 0x1

    .line 209
    .end local v2           #hasTextures:Z
    .local v0, hasTextures:Z
    add-int/lit8 p0, p0, 0x1

    move v2, v0

    .line 212
    .end local v0           #hasTextures:Z
    .restart local v2       #hasTextures:Z
    :cond_5
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v0, v0

    mul-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .end local p0           #faceFields:I
    move-result-object v0

    .line 213
    .local v0, faces:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 214
    const/4 p0, 0x0

    .local p0, i:I
    move v3, p0

    .end local v4           #version:I
    .end local p0           #i:I
    .local v3, i:I
    :goto_b
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length p0, p0

    if-lt v3, p0, :cond_17

    .line 222
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    invoke-interface {p2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 226
    .end local v0           #faces:Ljava/nio/ByteBuffer;
    .end local v1           #hasNormals:Z
    .end local v2           #hasTextures:Z
    .end local v3           #i:I
    :cond_6
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    if-eqz p0, :cond_7

    .line 227
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 228
    .local v1, useMaterial:Ljava/nio/ByteBuffer;
    sget-object p0, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 229
    const/4 p0, 0x0

    .restart local p0       #i:I
    :goto_c
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length v0, v0

    if-lt p0, v0, :cond_1b

    .line 234
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 235
    invoke-interface {p2, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 238
    .end local v1           #useMaterial:Ljava/nio/ByteBuffer;
    .end local p0           #i:I
    :cond_7
    invoke-interface {p2}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 243
    .end local p2           #channel:Ljava/nio/channels/WritableByteChannel;
    :goto_d
    return-void

    .line 96
    .restart local v4       #version:I
    .local p0, header:Ljava/nio/ByteBuffer;
    .restart local p2       #channel:Ljava/nio/channels/WritableByteChannel;
    :cond_8
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v0, v0

    goto/16 :goto_0

    .line 97
    :cond_9
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v0, v0

    goto/16 :goto_1

    .line 98
    :cond_a
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length v0, v0

    goto/16 :goto_2

    .line 99
    :cond_b
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v0, v0

    goto/16 :goto_3

    .line 100
    :cond_c
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v0, v0

    goto/16 :goto_4

    .line 101
    :cond_d
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length v0, v0

    goto/16 :goto_5

    .line 107
    .end local p0           #header:Ljava/nio/ByteBuffer;
    .local v1, i:I
    :cond_e
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object p0, p0, v1

    .line 109
    .local p0, m:Lcom/layar/core/Layar3DModel$Material;
    iget-object v0, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v0}, Lcom/layar/core/Texture;->getSize()I

    move-result v0

    .line 111
    .local v0, textureSize:I
    :goto_e
    add-int/lit8 v2, v0, 0x2c

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 112
    .local v2, mat:Ljava/nio/ByteBuffer;
    sget-object v3, Lcom/layar/core/Layar3DModelLoader;->BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->r:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->g:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->b:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->r:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->g:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->b:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->r:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->g:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    iget v3, v3, Lcom/layar/core/Layar3DModel$Color;->b:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    iget v3, p0, Lcom/layar/core/Layar3DModel$Material;->specularExponent:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 125
    const/4 v3, 0x2

    if-ne v4, v3, :cond_12

    .line 126
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v3}, Lcom/layar/core/Texture;->getType()I

    move-result v3

    .line 127
    .local v3, type:I
    :goto_f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 129
    packed-switch v3, :pswitch_data_0

    .line 153
    .end local v0           #textureSize:I
    .end local v3           #type:I
    .end local p0           #m:Lcom/layar/core/Layar3DModel$Material;
    :cond_f
    :goto_10
    :pswitch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Material position: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Material capacity: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    invoke-interface {p2, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 106
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_6

    .line 109
    .end local v2           #mat:Ljava/nio/ByteBuffer;
    .local p0, m:Lcom/layar/core/Layar3DModel$Material;
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 126
    .restart local v0       #textureSize:I
    .restart local v2       #mat:Ljava/nio/ByteBuffer;
    :cond_11
    const/4 v3, 0x0

    goto :goto_f

    .line 133
    .restart local v3       #type:I
    :pswitch_1
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    iget-object p0, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    .end local p0           #m:Lcom/layar/core/Layar3DModel$Material;
    invoke-interface {p0}, Lcom/layar/core/Texture;->getTextureData()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    .line 239
    .end local v0           #textureSize:I
    .end local v1           #i:I
    .end local v2           #mat:Ljava/nio/ByteBuffer;
    .end local v3           #type:I
    .end local v4           #version:I
    .end local p2           #channel:Ljava/nio/channels/WritableByteChannel;
    :catch_0
    move-exception p0

    .line 240
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 137
    .restart local v0       #textureSize:I
    .restart local v1       #i:I
    .restart local v2       #mat:Ljava/nio/ByteBuffer;
    .restart local v3       #type:I
    .restart local v4       #version:I
    .local p0, m:Lcom/layar/core/Layar3DModel$Material;
    .restart local p2       #channel:Ljava/nio/channels/WritableByteChannel;
    :pswitch_2
    :try_start_1
    iget-object p0, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    .end local p0           #m:Lcom/layar/core/Layar3DModel$Material;
    check-cast p0, Lcom/layar/core/AnimatedTexture;

    .line 138
    .local p0, at:Lcom/layar/core/AnimatedTexture;
    invoke-virtual {p0}, Lcom/layar/core/AnimatedTexture;->getLoopCount()I

    move-result v0

    .end local v0           #textureSize:I
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p0}, Lcom/layar/core/AnimatedTexture;->getFrameCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    const/4 v0, 0x0

    .end local v3           #type:I
    .local v0, f:I
    :goto_11
    invoke-virtual {p0}, Lcom/layar/core/AnimatedTexture;->getFrameCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 141
    invoke-virtual {p0, v0}, Lcom/layar/core/AnimatedTexture;->getFrameDelay(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p0, v0}, Lcom/layar/core/AnimatedTexture;->getFrameData(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p0, v0}, Lcom/layar/core/AnimatedTexture;->getFrameData(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 149
    .local v0, textureSize:I
    .local p0, m:Lcom/layar/core/Layar3DModel$Material;
    :cond_12
    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v3}, Lcom/layar/core/Texture;->getSize()I

    move-result v3

    :goto_12
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    if-lez v0, :cond_f

    iget-object p0, p0, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    .end local p0           #m:Lcom/layar/core/Layar3DModel$Material;
    invoke-interface {p0}, Lcom/layar/core/Texture;->getTextureData()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_10

    .line 149
    .restart local p0       #m:Lcom/layar/core/Layar3DModel$Material;
    :cond_13
    const/4 v3, 0x0

    goto :goto_12

    .line 165
    .end local v2           #mat:Ljava/nio/ByteBuffer;
    .end local p0           #m:Lcom/layar/core/Layar3DModel$Material;
    .local v0, i:I
    .local v1, vertices:Ljava/nio/ByteBuffer;
    :cond_14
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    aget-object p0, p0, v0

    .line 166
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord3D;
    iget v2, p0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    iget v2, p0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    iget p0, p0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .end local p0           #c:Lcom/layar/core/Layar3DModel$Coord3D;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_7

    .line 178
    .local v1, textureCoords:Ljava/nio/ByteBuffer;
    :cond_15
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    aget-object p0, p0, v0

    .line 179
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord2D;
    iget v2, p0, Lcom/layar/core/Layar3DModel$Coord2D;->u:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 180
    iget p0, p0, Lcom/layar/core/Layar3DModel$Coord2D;->v:I

    .end local p0           #c:Lcom/layar/core/Layar3DModel$Coord2D;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_8

    .line 190
    .local v1, normals:Ljava/nio/ByteBuffer;
    :cond_16
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    aget-object p0, p0, v0

    .line 191
    .local p0, c:Lcom/layar/core/Layar3DModel$Coord3D;
    iget v2, p0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 192
    iget v2, p0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 193
    iget p0, p0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .end local p0           #c:Lcom/layar/core/Layar3DModel$Coord3D;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 189
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_9

    .line 215
    .end local v4           #version:I
    .local v0, faces:Ljava/nio/ByteBuffer;
    .local v1, hasNormals:Z
    .local v2, hasTextures:Z
    .local v3, i:I
    :cond_17
    iget-object p0, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    aget-object p0, p0, v3

    .line 216
    .local p0, f:Lcom/layar/core/Layar3DModel$Face;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_13
    const/4 v5, 0x3

    if-lt v4, v5, :cond_18

    .line 214
    add-int/lit8 p0, v3, 0x1

    .end local v3           #i:I
    .local p0, i:I
    move v3, p0

    .end local p0           #i:I
    .restart local v3       #i:I
    goto/16 :goto_b

    .line 217
    .local p0, f:Lcom/layar/core/Layar3DModel$Face;
    :cond_18
    iget-object v5, p0, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    if-eqz v2, :cond_19

    iget-object v5, p0, Lcom/layar/core/Layar3DModel$Face;->t:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    :cond_19
    if-eqz v1, :cond_1a

    iget-object v5, p0, Lcom/layar/core/Layar3DModel$Face;->n:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 216
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 230
    .end local v0           #faces:Ljava/nio/ByteBuffer;
    .end local v2           #hasTextures:Z
    .end local v3           #i:I
    .end local v4           #j:I
    .local v1, useMaterial:Ljava/nio/ByteBuffer;
    .local p0, i:I
    :cond_1b
    iget-object v0, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    aget-object v0, v0, p0

    .line 231
    .local v0, u:Lcom/layar/core/Layar3DModel$UseMaterial;
    iget v2, v0, Lcom/layar/core/Layar3DModel$UseMaterial;->faceIndex:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 232
    iget v0, v0, Lcom/layar/core/Layar3DModel$UseMaterial;->material:I

    .end local v0           #u:Lcom/layar/core/Layar3DModel$UseMaterial;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_c

    .end local v1           #useMaterial:Ljava/nio/ByteBuffer;
    .local v0, hasNormals:Z
    .restart local v2       #hasTextures:Z
    .local v4, version:I
    .local p0, faceFields:I
    :cond_1c
    move v1, v0

    .end local v0           #hasNormals:Z
    .local v1, hasNormals:Z
    goto/16 :goto_a

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
