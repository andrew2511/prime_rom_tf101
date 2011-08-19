.class final Lcom/ecareme/pixwe/media/GridQuadMesh;
.super Ljava/lang/Object;
.source "GridQuadMesh.java"


# instance fields
.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferIndex:I

.field private mIndexCount:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordBufferIndex:I

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 20
    .parameter "vertsAcross"
    .parameter "vertsDown"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-ltz p1, :cond_0

    const/high16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 46
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "vertsAcross"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 48
    :cond_1
    if-ltz p2, :cond_2

    const/high16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 49
    :cond_2
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "vertsDown"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 51
    :cond_3
    mul-int v18, p1, p2

    const/high16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 52
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "vertsAcross * vertsDown >= 65536"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 55
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    .line 56
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mH:I

    .line 57
    mul-int v15, p1, p2

    .line 58
    .local v15, size:I
    const/4 v4, 0x4

    .line 59
    .local v4, FLOAT_SIZE:I
    const/4 v3, 0x2

    .line 60
    .local v3, CHAR_SIZE:I
    mul-int/lit8 v18, v15, 0x4

    mul-int/lit8 v18, v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 61
    mul-int/lit8 v18, v15, 0x4

    mul-int/lit8 v18, v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 63
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v14, v18, v19

    .line 64
    .local v14, quadW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mH:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 65
    .local v13, quadH:I
    mul-int v12, v14, v13

    .line 66
    .local v12, quadCount:I
    mul-int/lit8 v11, v12, 0x6

    .line 67
    .local v11, indexCount:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexCount:I

    .line 68
    mul-int/lit8 v18, v11, 0x2

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, i:I
    const/16 v17, 0x0

    .local v17, y:I
    :goto_0
    move/from16 v0, v17

    move v1, v13

    if-lt v0, v1, :cond_5

    .line 96
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    .line 97
    return-void

    .line 79
    :cond_5
    const/16 v16, 0x0

    .local v16, x:I
    move v10, v9

    .end local v9           #i:I
    .local v10, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v14

    if-lt v0, v1, :cond_6

    .line 78
    add-int/lit8 v17, v17, 0x1

    move v9, v10

    .end local v10           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .line 80
    .end local v9           #i:I
    .restart local v10       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    move/from16 v18, v0

    mul-int v18, v18, v17

    add-int v18, v18, v16

    move/from16 v0, v18

    int-to-char v0, v0

    move v5, v0

    .line 81
    .local v5, a:C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    move/from16 v18, v0

    mul-int v18, v18, v17

    add-int v18, v18, v16

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-char v0, v0

    move v6, v0

    .line 82
    .local v6, b:C
    add-int/lit8 v18, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v18, v18, v16

    move/from16 v0, v18

    int-to-char v0, v0

    move v7, v0

    .line 83
    .local v7, c:C
    add-int/lit8 v18, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v18, v18, v16

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-char v0, v0

    move v8, v0

    .line 85
    .local v8, d:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    move-object/from16 v0, v18

    move v1, v10

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v18

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    move-object/from16 v0, v18

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v18

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    move-object/from16 v0, v18

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v18

    move v1, v9

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 79
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 8
    .parameter "gl"
    .parameter "useTexture"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const v6, 0x8892

    const/16 v3, 0x1406

    const/4 v5, 0x0

    .line 120
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    if-nez v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v3, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v3, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 127
    :cond_0
    const/4 v2, 0x4

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexCount:I

    const/16 v4, 0x1403

    iget-object v5, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 144
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 131
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    invoke-interface {v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 132
    invoke-interface {v1, v7, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 134
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTextureCoordBufferIndex:I

    invoke-interface {v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 135
    invoke-interface {v1, v4, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 137
    const v2, 0x8893

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBufferIndex:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 138
    const/4 v2, 0x4

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexCount:I

    const/16 v4, 0x1403

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 140
    invoke-interface {v1, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 141
    const v2, 0x8893

    invoke-interface {v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public forgetHardwareBuffers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    .line 157
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBufferIndex:I

    .line 158
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTextureCoordBufferIndex:I

    .line 159
    return-void
.end method

.method public freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    if-eqz v3, :cond_1

    .line 166
    instance-of v3, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v3, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v2, v0

    .line 168
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v5, [I

    .line 169
    .local v1, buffer:[I
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    aput v3, v1, v4

    .line 170
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 172
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTextureCoordBufferIndex:I

    aput v3, v1, v4

    .line 173
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 175
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBufferIndex:I

    aput v3, v1, v4

    .line 176
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 179
    .end local v1           #buffer:[I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuadMesh;->forgetHardwareBuffers()V

    .line 181
    :cond_1
    return-void
.end method

.method public generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const v11, 0x88e4

    const v10, 0x8893

    const/4 v9, 0x1

    const v8, 0x8892

    const/4 v7, 0x0

    .line 193
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    if-nez v6, :cond_0

    .line 194
    instance-of v6, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v6, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v2, v0

    .line 196
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v9, [I

    .line 199
    .local v1, buffer:[I
    invoke-interface {v2, v9, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 200
    aget v6, v1, v7

    iput v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    .line 201
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    invoke-interface {v2, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 202
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v5, v6, 0x4

    .line 203
    .local v5, vertexSize:I
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v8, v5, v6, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 207
    invoke-interface {v2, v9, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 208
    aget v6, v1, v7

    iput v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTextureCoordBufferIndex:I

    .line 209
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTextureCoordBufferIndex:I

    invoke-interface {v2, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 210
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v4, v6, 0x4

    .line 211
    .local v4, texCoordSize:I
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v8, v4, v6, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 215
    invoke-interface {v2, v8, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 218
    invoke-interface {v2, v9, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 219
    aget v6, v1, v7

    iput v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBufferIndex:I

    .line 220
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBufferIndex:I

    invoke-interface {v2, v10, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 222
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    .line 223
    .local v3, indexSize:I
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v2, v10, v3, v6, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 227
    invoke-interface {v2, v10, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 230
    .end local v1           #buffer:[I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v3           #indexSize:I
    .end local v4           #texCoordSize:I
    .end local v5           #vertexSize:I
    :cond_0
    return-void
.end method

.method set(IIFFFFF)V
    .locals 5
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"

    .prologue
    .line 100
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    if-lt p1, v3, :cond_1

    .line 101
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "i"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_1
    if-ltz p2, :cond_2

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mH:I

    if-lt p2, v3, :cond_3

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "j"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_3
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mW:I

    mul-int/2addr v3, p2

    add-int v0, v3, p1

    .line 109
    .local v0, index:I
    mul-int/lit8 v1, v0, 0x3

    .line 110
    .local v1, posIndex:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 111
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 114
    mul-int/lit8 v2, v0, 0x2

    .line 115
    .local v2, texIndex:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 116
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 117
    return-void
.end method

.method public usingHardwareBuffers()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuadMesh;->mVertBufferIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
