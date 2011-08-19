.class Lcom/asus/livewallpaper/gl/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColorBuffer:Ljava/nio/Buffer;

.field private mColorBufferIndex:I

.field private mCoordinateSize:I

.field private mCoordinateType:I

.field private mFixedColorBuffer:Ljava/nio/IntBuffer;

.field private mFixedTexCoordBuffer:Ljava/nio/IntBuffer;

.field private mFixedVertexBuffer:Ljava/nio/IntBuffer;

.field private mFloatColorBuffer:Ljava/nio/FloatBuffer;

.field private mFloatTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mFloatVertexBuffer:Ljava/nio/FloatBuffer;

.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferIndex:I

.field private mIndexCount:I

.field private mTexCoordBuffer:Ljava/nio/Buffer;

.field private mTextureCoordBufferIndex:I

.field private mUseHardwareBuffers:Z

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/Buffer;

.field private mW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/asus/livewallpaper/gl/Grid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/asus/livewallpaper/gl/Grid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIZ)V
    .locals 21
    .parameter "vertsAcross"
    .parameter "vertsDown"
    .parameter "useFixedPoint"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-ltz p1, :cond_0

    const/high16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 63
    :cond_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "vertsAcross"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 65
    :cond_1
    if-ltz p2, :cond_2

    const/high16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 66
    :cond_2
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "vertsDown"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 68
    :cond_3
    mul-int v19, p1, p2

    const/high16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 69
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "vertsAcross * vertsDown >= 65536"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 72
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mUseHardwareBuffers:Z

    .line 74
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    .line 75
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mH:I

    .line 76
    mul-int v16, p1, p2

    .line 77
    .local v16, size:I
    const/4 v5, 0x4

    .line 78
    .local v5, FLOAT_SIZE:I
    const/4 v4, 0x4

    .line 79
    .local v4, FIXED_SIZE:I
    const/4 v3, 0x2

    .line 81
    .local v3, CHAR_SIZE:I
    if-eqz p3, :cond_5

    .line 82
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    .line 84
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFixedTexCoordBuffer:Ljava/nio/IntBuffer;

    .line 86
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mVertexBuffer:Ljava/nio/Buffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFixedTexCoordBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mTexCoordBuffer:Ljava/nio/Buffer;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mColorBuffer:Ljava/nio/Buffer;

    .line 92
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateSize:I

    .line 93
    const/16 v19, 0x140c

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v15, v19, v20

    .line 114
    .local v15, quadW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mH:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v14, v19, v20

    .line 115
    .local v14, quadH:I
    mul-int v13, v15, v14

    .line 116
    .local v13, quadCount:I
    mul-int/lit8 v12, v13, 0x6

    .line 117
    .local v12, indexCount:I
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mIndexCount:I

    .line 118
    mul-int/lit8 v19, v12, 0x2

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 134
    const/4 v10, 0x0

    .line 135
    .local v10, i:I
    const/16 v18, 0x0

    .local v18, y:I
    :goto_1
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_7

    .line 136
    const/16 v17, 0x0

    .local v17, x:I
    move v11, v10

    .end local v10           #i:I
    .local v11, i:I
    :goto_2
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    move/from16 v19, v0

    mul-int v19, v19, v18

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-char v0, v0

    move v6, v0

    .line 138
    .local v6, a:C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    move/from16 v19, v0

    mul-int v19, v19, v18

    add-int v19, v19, v17

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-char v0, v0

    move v7, v0

    .line 139
    .local v7, b:C
    add-int/lit8 v19, v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-char v0, v0

    move v8, v0

    .line 140
    .local v8, c:C
    add-int/lit8 v19, v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    add-int v19, v19, v17

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-char v0, v0

    move v9, v0

    .line 142
    .local v9, d:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v19

    move v1, v11

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v19

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v19

    move v1, v11

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v19

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v19

    move v1, v11

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v19

    move v1, v10

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 136
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 96
    .end local v6           #a:C
    .end local v7           #b:C
    .end local v8           #c:C
    .end local v9           #d:C
    .end local v11           #i:I
    .end local v12           #indexCount:I
    .end local v13           #quadCount:I
    .end local v14           #quadH:I
    .end local v15           #quadW:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_5
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    .line 98
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFloatTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 100
    mul-int/lit8 v19, v16, 0x4

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mVertexBuffer:Ljava/nio/Buffer;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFloatTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mTexCoordBuffer:Ljava/nio/Buffer;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mColorBuffer:Ljava/nio/Buffer;

    .line 107
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateSize:I

    .line 108
    const/16 v19, 0x1406

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    goto/16 :goto_0

    .line 135
    .restart local v11       #i:I
    .restart local v12       #indexCount:I
    .restart local v13       #quadCount:I
    .restart local v14       #quadH:I
    .restart local v15       #quadW:I
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_6
    add-int/lit8 v18, v18, 0x1

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_1

    .line 153
    .end local v17           #x:I
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/livewallpaper/gl/Grid;->mVertBufferIndex:I

    .line 154
    return-void
.end method

.method public static beginDrawing(Ljavax/microedition/khronos/opengles/GL10;ZZ)V
    .locals 4
    .parameter "gl"
    .parameter "useTexture"
    .parameter "useColor"

    .prologue
    const v3, 0x8078

    const v2, 0x8076

    const/16 v1, 0xde1

    .line 202
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 206
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 212
    :goto_0
    if-eqz p2, :cond_1

    .line 213
    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    :goto_1
    return-void

    .line 208
    :cond_0
    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 209
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_1
.end method

.method public static endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 262
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;ZZ)V
    .locals 9
    .parameter "gl"
    .parameter "useTexture"
    .parameter "useColor"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const v6, 0x8892

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 221
    iget-boolean v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mUseHardwareBuffers:Z

    if-nez v2, :cond_2

    .line 222
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mVertexBuffer:Ljava/nio/Buffer;

    invoke-interface {p1, v8, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 224
    if-eqz p2, :cond_0

    .line 225
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mTexCoordBuffer:Ljava/nio/Buffer;

    invoke-interface {p1, v7, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 228
    :cond_0
    if-eqz p3, :cond_1

    .line 229
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mColorBuffer:Ljava/nio/Buffer;

    invoke-interface {p1, v5, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 232
    :cond_1
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mIndexCount:I

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p1, v5, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 259
    :goto_0
    return-void

    .line 235
    :cond_2
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 237
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mVertBufferIndex:I

    invoke-interface {v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 238
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    invoke-interface {v1, v8, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 240
    if-eqz p2, :cond_3

    .line 241
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mTextureCoordBufferIndex:I

    invoke-interface {v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 242
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    invoke-interface {v1, v7, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 245
    :cond_3
    if-eqz p3, :cond_4

    .line 246
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mColorBufferIndex:I

    invoke-interface {v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 247
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    invoke-interface {v1, v5, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 250
    :cond_4
    const v2, 0x8893

    iget v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mIndexBufferIndex:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 251
    iget v2, p0, Lcom/asus/livewallpaper/gl/Grid;->mIndexCount:I

    const/16 v3, 0x1403

    invoke-interface {v1, v5, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 254
    invoke-interface {v1, v6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 255
    const v2, 0x8893

    invoke-interface {v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method set(IIFFFFF[F)V
    .locals 8
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"
    .parameter "color"

    .prologue
    .line 157
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    if-lt p1, v4, :cond_1

    .line 158
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "i"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_1
    if-ltz p2, :cond_2

    iget v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mH:I

    if-lt p2, v4, :cond_3

    .line 161
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "j"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_3
    iget v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    mul-int/2addr v4, p2

    add-int v1, v4, p1

    .line 166
    .local v1, index:I
    shl-int/lit8 v3, v1, 0x1

    .line 167
    .local v3, texIndex:I
    add-int v2, v3, v1

    .line 168
    .local v2, posIndex:I
    shl-int/lit8 v0, v1, 0x2

    .line 170
    .local v0, colorIndex:I
    iget v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    const/16 v5, 0x1406

    if-ne v4, v5, :cond_5

    .line 171
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 176
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 178
    if-eqz p8, :cond_4

    .line 179
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    aget v5, p8, v5

    invoke-virtual {v4, v0, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 180
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    aget v6, p8, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 181
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    aget v6, p8, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatColorBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x3

    const/4 v6, 0x3

    aget v6, p8, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 199
    :cond_4
    :goto_0
    return-void

    .line 185
    :cond_5
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    const/high16 v5, 0x4780

    mul-float/2addr v5, p3

    float-to-int v5, v5

    invoke-virtual {v4, v2, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 186
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v2, 0x1

    const/high16 v6, 0x4780

    mul-float/2addr v6, p4

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 187
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v2, 0x2

    const/high16 v6, 0x4780

    mul-float/2addr v6, p5

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 189
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedTexCoordBuffer:Ljava/nio/IntBuffer;

    const/high16 v5, 0x4780

    mul-float/2addr v5, p6

    float-to-int v5, v5

    invoke-virtual {v4, v3, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 190
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedTexCoordBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v3, 0x1

    const/high16 v6, 0x4780

    mul-float/2addr v6, p7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 192
    if-eqz p8, :cond_4

    .line 193
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    const/4 v5, 0x0

    aget v5, p8, v5

    const/high16 v6, 0x4780

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v0, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 194
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    aget v6, p8, v6

    const/high16 v7, 0x4780

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 195
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    aget v6, p8, v6

    const/high16 v7, 0x4780

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 196
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedColorBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v0, 0x3

    const/4 v6, 0x3

    aget v6, p8, v6

    const/high16 v7, 0x4780

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method setVertexs(IIZFZFZF)V
    .locals 7
    .parameter "i"
    .parameter "j"
    .parameter "ignorex"
    .parameter "x"
    .parameter "ignorey"
    .parameter "y"
    .parameter "ignorez"
    .parameter "z"

    .prologue
    const/high16 v6, 0x4780

    .line 412
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    if-lt p1, v3, :cond_1

    .line 413
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "i"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    :cond_1
    if-ltz p2, :cond_2

    iget v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mH:I

    if-lt p2, v3, :cond_3

    .line 416
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "j"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    :cond_3
    iget v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mW:I

    mul-int/2addr v3, p2

    add-int v0, v3, p1

    .line 421
    .local v0, index:I
    shl-int/lit8 v2, v0, 0x1

    .line 422
    .local v2, texIndex:I
    add-int v1, v2, v0

    .line 424
    .local v1, posIndex:I
    iget v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mCoordinateType:I

    const/16 v4, 0x1406

    if-ne v3, v4, :cond_7

    .line 425
    if-nez p3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 428
    :cond_4
    if-nez p5, :cond_5

    .line 429
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 431
    :cond_5
    if-nez p7, :cond_6

    .line 432
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFloatVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4, p8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 446
    :cond_6
    :goto_0
    return-void

    .line 436
    :cond_7
    if-nez p3, :cond_8

    .line 437
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    mul-float v4, p4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 439
    :cond_8
    if-nez p5, :cond_9

    .line 440
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v4, v1, 0x1

    mul-float v5, p6, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 442
    :cond_9
    if-eqz p7, :cond_6

    .line 443
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/Grid;->mFixedVertexBuffer:Ljava/nio/IntBuffer;

    add-int/lit8 v4, v1, 0x2

    mul-float v5, p8, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0
.end method
