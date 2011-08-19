.class final Lcom/ecareme/pixwe/media/GridQuadFrame;
.super Ljava/lang/Object;
.source "GridQuadFrame.java"


# static fields
.field public static final INDEX_COUNT:I = 0x19


# instance fields
.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferIndex:I

.field private mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mSecTextureCoordBufferIndex:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordBufferIndex:I

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I


# direct methods
.method public constructor <init>()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v9, 0x4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v5, 0x4

    .line 89
    .local v5, vertsAcross:I
    const/4 v6, 0x4

    .line 90
    .local v6, vertsDown:I
    iput v5, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mW:I

    .line 91
    iput v6, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mH:I

    .line 92
    mul-int v4, v5, v6

    .line 93
    .local v4, size:I
    const/4 v1, 0x4

    .line 94
    .local v1, FLOAT_SIZE:I
    const/4 v0, 0x2

    .line 95
    .local v0, CHAR_SIZE:I
    mul-int/lit8 v7, v9, 0x10

    mul-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 96
    mul-int/lit8 v7, v9, 0x10

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 97
    mul-int/lit8 v7, v9, 0x10

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 99
    const/16 v3, 0x19

    .line 100
    .local v3, indexCount:I
    mul-int/lit8 v7, v3, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 110
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 111
    .local v2, buffer:Ljava/nio/CharBuffer;
    invoke-virtual {v2, v11, v11}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 112
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 113
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 114
    const/4 v7, 0x3

    invoke-virtual {v2, v7, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 115
    const/4 v7, 0x2

    invoke-virtual {v2, v9, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 116
    invoke-virtual {v2, v12, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 117
    const/4 v7, 0x3

    invoke-virtual {v2, v13, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 118
    const/4 v7, 0x7

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 119
    const/16 v7, 0x8

    const/16 v8, 0xb

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 120
    const/16 v7, 0x9

    invoke-virtual {v2, v7, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 121
    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 122
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v10}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 123
    const/16 v7, 0xc

    const/16 v8, 0xb

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 124
    const/16 v7, 0xd

    const/16 v8, 0xf

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 125
    const/16 v7, 0xf

    invoke-virtual {v2, v10, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 126
    const/16 v7, 0xf

    invoke-virtual {v2, v7, v10}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 127
    const/16 v7, 0x10

    invoke-virtual {v2, v7, v10}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 128
    const/16 v7, 0x11

    const/16 v8, 0xa

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 129
    const/16 v7, 0x12

    const/16 v8, 0xd

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 130
    const/16 v7, 0x13

    const/16 v8, 0x9

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 131
    const/16 v7, 0x14

    const/16 v8, 0xc

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 132
    const/16 v7, 0x15

    const/16 v8, 0x8

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 133
    const/16 v7, 0x16

    invoke-virtual {v2, v7, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 134
    const/16 v7, 0x17

    const/16 v8, 0x9

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 135
    const/16 v7, 0x18

    invoke-virtual {v2, v7, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 136
    iput v11, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    .line 137
    return-void
.end method

.method public static createFrame(FFII)Lcom/ecareme/pixwe/media/GridQuadFrame;
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 46
    new-instance v0, Lcom/ecareme/pixwe/media/GridQuadFrame;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/GridQuadFrame;-><init>()V

    .line 47
    .local v0, frame:Lcom/ecareme/pixwe/media/GridQuadFrame;
    const/high16 p2, 0x4280

    .line 48
    .local p2, textureSize:F
    const/high16 p2, 0x40e0

    .line 49
    .local p2, numPixelsYOriginShift:F
    const/high16 p2, 0x40c0

    .line 50
    .local p2, inset:F
    const/high16 p2, 0x3f80

    int-to-float p3, p3

    div-float v2, p2, p3

    .line 51
    .local v2, ratio:F
    const/high16 p2, 0x4200

    mul-float/2addr p2, v2

    .line 52
    .local p2, frameXThickness:F
    const/high16 p3, 0x4200

    mul-float v8, p3, v2

    .line 53
    .local v8, frameYThickness:F
    const/high16 p3, 0x3f00

    mul-float/2addr p0, p3

    const/high16 p3, 0x3f00

    mul-float/2addr p3, p2

    add-float/2addr p0, p3

    const/high16 p3, 0x40c0

    mul-float/2addr p3, v2

    sub-float/2addr p0, p3

    .line 54
    .local p0, frameX:F
    const/high16 p3, 0x3f00

    mul-float/2addr p3, p1

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v8

    add-float/2addr p3, v1

    const/high16 v1, 0x40a0

    mul-float/2addr v1, v2

    add-float/2addr p3, v1

    .line 55
    .local p3, frameY:F
    const/4 v1, 0x0

    .line 56
    .local v1, originX:F
    const/high16 v1, 0x40e0

    mul-float v9, v1, v2

    .line 58
    .local v9, originY:F
    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, p0

    const/4 v4, 0x0

    add-float/2addr v3, v4

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 59
    .end local v1           #originX:F
    .end local v2           #ratio:F
    const/4 v1, 0x1

    const/4 v2, 0x0

    neg-float v3, p0

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float/2addr v3, p2

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 60
    const/4 v1, 0x2

    const/4 v2, 0x0

    sub-float v3, p0, p2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 61
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-float/2addr v3, p0

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 63
    sub-float/2addr p3, v8

    .line 65
    const/4 v1, 0x0

    const/4 v2, 0x1

    neg-float v3, p0

    const/4 v4, 0x0

    add-float/2addr v3, v4

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 66
    const/4 v1, 0x1

    const/4 v2, 0x1

    neg-float v3, p0

    add-float/2addr v3, p2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 67
    const/4 v1, 0x2

    const/4 v2, 0x1

    sub-float v3, p0, p2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    neg-float v4, p3

    add-float/2addr v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 68
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-float/2addr v3, p0

    neg-float p3, p3

    add-float v4, p3, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 70
    .end local p3           #frameY:F
    const/high16 p3, 0x3f00

    mul-float/2addr p1, p3

    sub-float/2addr p1, v8

    .line 72
    .local p1, frameY:F
    const/4 v1, 0x0

    const/4 v2, 0x2

    neg-float p3, p0

    const/4 v3, 0x0

    add-float/2addr v3, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 73
    const/4 v1, 0x1

    const/4 v2, 0x2

    neg-float p3, p0

    add-float/2addr p3, p2

    const/4 v3, 0x0

    add-float/2addr v3, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 74
    const/4 v1, 0x2

    const/4 v2, 0x2

    sub-float p3, p0, p2

    const/4 v3, 0x0

    add-float/2addr v3, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 75
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 p3, 0x0

    add-float v3, p0, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 77
    add-float/2addr p1, v8

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x3

    neg-float p3, p0

    const/4 v3, 0x0

    add-float/2addr v3, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 80
    const/4 v1, 0x1

    const/4 v2, 0x3

    neg-float p3, p0

    add-float/2addr p3, p2

    const/4 v3, 0x0

    add-float/2addr v3, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 81
    const/4 v1, 0x2

    const/4 v2, 0x3

    sub-float p2, p0, p2

    const/4 p3, 0x0

    add-float v3, p2, p3

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 82
    .end local p2           #frameXThickness:F
    const/4 v1, 0x3

    const/4 v2, 0x3

    const/4 p2, 0x0

    add-float v3, p0, p2

    add-float v4, p1, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridQuadFrame;->set(IIFFFFF)V

    .line 84
    return-object v0
.end method

.method public static final draw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl11"

    .prologue
    .line 180
    const/4 v0, 0x5

    const/16 v1, 0x19

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 181
    return-void
.end method


# virtual methods
.method public bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x2

    const v5, 0x8892

    const/16 v4, 0x1406

    const/4 v3, 0x0

    .line 164
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 166
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 167
    const/4 v2, 0x3

    invoke-interface {v1, v2, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 169
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 170
    invoke-interface {v1, v6, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 171
    const v2, 0x84c1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 172
    iget v2, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 173
    invoke-interface {v1, v6, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 174
    const v2, 0x84c0

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 175
    const v2, 0x8893

    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBufferIndex:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 176
    return-void
.end method

.method public forgetHardwareBuffers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    .line 200
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBufferIndex:I

    .line 201
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    .line 202
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    .line 203
    return-void
.end method

.method public freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    if-eqz v3, :cond_1

    .line 210
    instance-of v3, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v3, :cond_0

    .line 211
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v2, v0

    .line 212
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v5, [I

    .line 213
    .local v1, buffer:[I
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    aput v3, v1, v4

    .line 214
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 216
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    aput v3, v1, v4

    .line 217
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 219
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    aput v3, v1, v4

    .line 220
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 222
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBufferIndex:I

    aput v3, v1, v4

    .line 223
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 225
    .end local v1           #buffer:[I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuadFrame;->forgetHardwareBuffers()V

    .line 227
    :cond_1
    return-void
.end method

.method public generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const v12, 0x8893

    const v11, 0x88e4

    const/4 v10, 0x1

    const v9, 0x8892

    const/4 v8, 0x0

    .line 239
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    if-nez v7, :cond_0

    .line 240
    instance-of v7, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v7, :cond_0

    .line 241
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v2, v0

    .line 242
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v10, [I

    .line 245
    .local v1, buffer:[I
    invoke-interface {v2, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 246
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    .line 247
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 248
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v6, v7, 0x4

    .line 250
    .local v6, vertexSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v6, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 253
    invoke-interface {v2, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 254
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    .line 255
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 256
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v5, v7, 0x4

    .line 257
    .local v5, texCoordSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v5, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 261
    invoke-interface {v2, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 262
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    .line 263
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 264
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v4, v7, 0x4

    .line 265
    .local v4, secTexCoordSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v4, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 269
    invoke-interface {v2, v9, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 272
    invoke-interface {v2, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 273
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBufferIndex:I

    .line 274
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBufferIndex:I

    invoke-interface {v2, v12, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 276
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    .line 277
    .local v3, indexSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v2, v12, v3, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 281
    invoke-interface {v2, v12, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 284
    .end local v1           #buffer:[I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v3           #indexSize:I
    .end local v4           #secTexCoordSize:I
    .end local v5           #texCoordSize:I
    .end local v6           #vertexSize:I
    :cond_0
    return-void
.end method

.method set(IIFFFFF)V
    .locals 6
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"

    .prologue
    .line 140
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mW:I

    if-lt p1, v4, :cond_1

    .line 141
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "i"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_1
    if-ltz p2, :cond_2

    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mH:I

    if-lt p2, v4, :cond_3

    .line 144
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "j"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_3
    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mW:I

    mul-int/2addr v4, p2

    add-int v0, v4, p1

    .line 149
    .local v0, index:I
    mul-int/lit8 v1, v0, 0x3

    .line 150
    .local v1, posIndex:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 151
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 152
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 154
    mul-int/lit8 v3, v0, 0x2

    .line 155
    .local v3, texIndex:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 156
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 158
    mul-int/lit8 v2, v0, 0x2

    .line 159
    .local v2, secTexIndex:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    return-void
.end method

.method public unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 184
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 185
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v2, 0x8892

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 186
    const v2, 0x8893

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 187
    return-void
.end method

.method public usingHardwareBuffers()Z
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuadFrame;->mVertBufferIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
