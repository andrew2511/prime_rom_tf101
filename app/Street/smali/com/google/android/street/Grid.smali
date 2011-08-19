.class Lcom/google/android/street/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private final mH:I

.field private final mIndexArray:[C

.field private final mIndexBuffer:Ljava/nio/CharBuffer;

.field private final mIndexCount:I

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mVertexArray:[F

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private final mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 19
    .parameter "w"
    .parameter "h"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    const/high16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 51
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "w"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 53
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    const/high16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 54
    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "h"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 56
    :cond_3
    mul-int v17, p1, p2

    const/high16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 57
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "w * h >= 65536"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 60
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Grid;->mW:I

    .line 61
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Grid;->mH:I

    .line 62
    mul-int v14, p1, p2

    .line 63
    .local v14, size:I
    const/4 v3, 0x4

    .line 64
    .local v3, FLOAT_SIZE:I
    const/4 v2, 0x2

    .line 65
    .local v2, CHAR_SIZE:I
    mul-int/lit8 v17, v14, 0x3

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Grid;->mVertexArray:[F

    .line 66
    mul-int/lit8 v17, v14, 0x4

    mul-int/lit8 v17, v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 68
    mul-int/lit8 v17, v14, 0x4

    mul-int/lit8 v17, v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 71
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Grid;->mW:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v13, v17, v18

    .line 72
    .local v13, quadW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Grid;->mH:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v12, v17, v18

    .line 73
    .local v12, quadH:I
    mul-int v11, v13, v12

    .line 74
    .local v11, quadCount:I
    mul-int/lit8 v10, v11, 0x6

    .line 75
    .local v10, indexCount:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Grid;->mIndexCount:I

    .line 76
    move v0, v10

    new-array v0, v0, [C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Grid;->mIndexArray:[C

    .line 77
    mul-int/lit8 v17, v10, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 93
    const/4 v8, 0x0

    .line 94
    .local v8, i:I
    const/16 v16, 0x0

    .local v16, y:I
    :goto_0
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_6

    .line 95
    const/4 v15, 0x0

    .local v15, x:I
    move v9, v8

    .end local v8           #i:I
    .local v9, i:I
    :goto_1
    if-ge v15, v13, :cond_5

    .line 96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Grid;->mW:I

    move/from16 v17, v0

    mul-int v17, v17, v16

    add-int v4, v17, v15

    .line 97
    .local v4, a:I
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    int-to-char v0, v0

    move v5, v0

    .line 98
    .local v5, b:C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Grid;->mW:I

    move/from16 v17, v0

    add-int v17, v17, v4

    move/from16 v0, v17

    int-to-char v0, v0

    move v6, v0

    .line 99
    .local v6, c:C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Grid;->mW:I

    move/from16 v17, v0

    add-int v17, v17, v4

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-char v0, v0

    move v7, v0

    .line 101
    .local v7, d:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    move v0, v4

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v17, v9

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .restart local v9       #i:I
    aput-char v5, v17, v8

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    aput-char v6, v17, v9

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .restart local v9       #i:I
    aput-char v5, v17, v8

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    aput-char v6, v17, v9

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .restart local v9       #i:I
    aput-char v7, v17, v8

    .line 95
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 94
    .end local v4           #a:I
    .end local v5           #b:C
    .end local v6           #c:C
    .end local v7           #d:C
    :cond_5
    add-int/lit8 v16, v16, 0x1

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 111
    .end local v15           #x:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexArray:[C

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 6
    .parameter "gl"
    .parameter "useTexture"

    .prologue
    const v5, 0x8078

    const/16 v4, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 155
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 156
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/street/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 158
    if-eqz p2, :cond_0

    .line 159
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 160
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/street/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 161
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 167
    :goto_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/street/Grid;->mIndexCount:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/street/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 169
    return-void

    .line 163
    :cond_0
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 164
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public getBoundingSphere([FI)V
    .locals 4
    .parameter "sphere"
    .parameter "sphereOffset"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/street/Grid;->mVertexArray:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/street/Grid;->mW:I

    iget v3, p0, Lcom/google/android/street/Grid;->mH:I

    mul-int/2addr v2, v3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/opengl/Visibility;->computeBoundingSphere([FII[FI)V

    .line 152
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
    .line 121
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/google/android/street/Grid;->mW:I

    if-lt p1, v3, :cond_1

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "i"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    if-ltz p2, :cond_2

    iget v3, p0, Lcom/google/android/street/Grid;->mH:I

    if-lt p2, v3, :cond_3

    .line 125
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "j"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_3
    iget v3, p0, Lcom/google/android/street/Grid;->mW:I

    mul-int/2addr v3, p2

    add-int v0, v3, p1

    .line 130
    .local v0, index:I
    mul-int/lit8 v1, v0, 0x3

    .line 131
    .local v1, posIndex:I
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexArray:[F

    aput p3, v3, v1

    .line 132
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexArray:[F

    add-int/lit8 v4, v1, 0x1

    aput p4, v3, v4

    .line 133
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexArray:[F

    add-int/lit8 v4, v1, 0x2

    aput p5, v3, v4

    .line 134
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v3, p0, Lcom/google/android/street/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 138
    mul-int/lit8 v2, v0, 0x2

    .line 139
    .local v2, texIndex:I
    iget-object v3, p0, Lcom/google/android/street/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v3, p0, Lcom/google/android/street/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 141
    return-void
.end method

.method public testVisibility(Lcom/google/android/street/VisibilityTester;)I
    .locals 6
    .parameter "vt"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v1, p0, Lcom/google/android/street/Grid;->mVertexArray:[F

    iget-object v3, p0, Lcom/google/android/street/Grid;->mIndexArray:[C

    iget-object v0, p0, Lcom/google/android/street/Grid;->mIndexArray:[C

    array-length v5, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/VisibilityTester;->isVisibileTriangleList([FI[CII)I

    move-result v0

    return v0
.end method
