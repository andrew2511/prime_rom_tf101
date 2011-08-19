.class public Lcom/google/android/opengl/glview/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/NinePatch$1;,
        Lcom/google/android/opengl/glview/NinePatch$NinePatchData;
    }
.end annotation


# static fields
.field private static final CHAR_SIZE:I = 0x2

.field private static final FLOAT_SIZE:I = 0x4


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Landroid/graphics/Bitmap$Config;

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field public mIndexCount:I

.field private mNaturalHeight:I

.field private mNaturalWidth:I

.field private mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

.field private mResourceId:I

.field private mResources:Landroid/content/res/Resources;

.field private mTextureId:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .parameter "resources"
    .parameter "resourceId"
    .parameter "config"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/google/android/opengl/glview/NinePatch;->mResources:Landroid/content/res/Resources;

    .line 168
    iput p2, p0, Lcom/google/android/opengl/glview/NinePatch;->mResourceId:I

    .line 169
    iput-object p3, p0, Lcom/google/android/opengl/glview/NinePatch;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 170
    return-void
.end method

.method private clearTextureId()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    .line 328
    return-void
.end method

.method private ensureNinePatchData(Z)V
    .locals 30
    .parameter "needBitmap"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 311
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mResources:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mResourceId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mNaturalWidth:I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mNaturalHeight:I

    .line 237
    new-instance v27, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;-><init>(Lcom/google/android/opengl/glview/NinePatch$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->deserialize([B)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->getVertexCountW()I

    move-result v22

    .line 241
    .local v22, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->getVertexCountH()I

    move-result v9

    .line 248
    .local v9, h:I
    const/16 v27, 0x1

    sub-int v19, v22, v27

    .line 249
    .local v19, quadW:I
    const/16 v27, 0x1

    sub-int v18, v9, v27

    .line 250
    .local v18, quadH:I
    mul-int v21, v22, v9

    .line 251
    .local v21, vertexCount:I
    const/16 v27, 0x1

    sub-int v27, v22, v27

    const/16 v28, 0x1

    sub-int v28, v9, v28

    mul-int v17, v27, v28

    .line 252
    .local v17, quadCount:I
    mul-int/lit8 v20, v17, 0x2

    .line 253
    .local v20, triangleCount:I
    mul-int/lit8 v27, v20, 0x3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mIndexCount:I

    .line 256
    mul-int/lit8 v27, v21, 0x18

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 260
    mul-int/lit8 v27, v22, 0x3

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 261
    .local v24, xCoords:[F
    mul-int/lit8 v27, v9, 0x3

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 263
    .local v26, yCoords:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->getCoords([F[FII)V

    .line 264
    const/4 v14, 0x0

    .line 265
    .local v14, joffset:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v9, :cond_4

    .line 266
    const/4 v12, 0x0

    .line 267
    .local v12, ioffset:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 268
    const/4 v15, 0x0

    .local v15, k:I
    :goto_3
    const/16 v27, 0x3

    move v0, v15

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v27, v0

    add-int v28, v12, v15

    aget v28, v24, v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v27, v0

    add-int v28, v14, v15

    aget v28, v26, v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 268
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 272
    :cond_2
    add-int/lit8 v12, v12, 0x3

    .line 267
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 274
    .end local v15           #k:I
    :cond_3
    add-int/lit8 v14, v14, 0x3

    .line 265
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 276
    .end local v10           #i:I
    .end local v12           #ioffset:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexCount:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 293
    const/4 v10, 0x0

    .line 294
    .restart local v10       #i:I
    const/16 v25, 0x0

    .local v25, y:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 295
    const/16 v23, 0x0

    .local v23, x:I
    move v11, v10

    .end local v10           #i:I
    .local v11, i:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 296
    mul-int v27, v25, v22

    add-int v27, v27, v23

    move/from16 v0, v27

    int-to-char v0, v0

    move v5, v0

    .line 297
    .local v5, a:C
    mul-int v27, v25, v22

    add-int v27, v27, v23

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-char v0, v0

    move v6, v0

    .line 298
    .local v6, b:C
    add-int/lit8 v27, v25, 0x1

    mul-int v27, v27, v22

    add-int v27, v27, v23

    move/from16 v0, v27

    int-to-char v0, v0

    move v7, v0

    .line 299
    .local v7, c:C
    add-int/lit8 v27, v25, 0x1

    mul-int v27, v27, v22

    add-int v27, v27, v23

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-char v0, v0

    move v8, v0

    .line 301
    .local v8, d:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v27

    move v1, v11

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v27

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v27

    move v1, v11

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v27

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v0, v27

    move v1, v11

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v0, v27

    move v1, v10

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 295
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 294
    .end local v5           #a:C
    .end local v6           #b:C
    .end local v7           #c:C
    .end local v8           #d:C
    :cond_5
    add-int/lit8 v25, v25, 0x1

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_4

    .line 310
    .end local v23           #x:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Lcom/google/android/opengl/glview/GLCanvas;IFFZ)V
    .locals 3
    .parameter "glCanvas"
    .parameter "textureChannel"
    .parameter "width"
    .parameter "height"
    .parameter "drawAsFrame"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/NinePatch;->getTextureId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture(II)V

    .line 175
    if-eqz p5, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v1, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 177
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v1, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingRight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 178
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v1, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingBottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p4, v0

    .line 179
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 181
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/opengl/glview/NinePatch;->setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;FF)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/NinePatch;->getVertexData()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 183
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindInputs()V

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/NinePatch;->drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 185
    if-eqz p5, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v0, v0, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mNinePatchData:Lcom/google/android/opengl/glview/NinePatch$NinePatchData;

    iget v1, v1, Lcom/google/android/opengl/glview/NinePatch$NinePatchData;->paddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 188
    :cond_1
    return-void
.end method

.method public drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 4
    .parameter "glCanvas"

    .prologue
    .line 200
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mIndexCount:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/opengl/glview/NinePatch;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 202
    return-void
.end method

.method public eglContexCleared()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/google/android/opengl/glview/NinePatch;->clearTextureId()V

    .line 315
    return-void
.end method

.method public freeOpenGlResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 320
    .local v0, ids:[I
    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    aput v1, v0, v2

    .line 321
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 322
    invoke-direct {p0}, Lcom/google/android/opengl/glview/NinePatch;->clearTextureId()V

    .line 324
    .end local v0           #ids:[I
    :cond_0
    return-void
.end method

.method public getTextureId()I
    .locals 5

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    if-nez v1, :cond_0

    .line 206
    new-array v0, v3, [I

    .line 207
    .local v0, textureIdBuf:[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 208
    aget v1, v0, v2

    iput v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    .line 209
    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 210
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 211
    invoke-direct {p0, v3}, Lcom/google/android/opengl/glview/NinePatch;->ensureNinePatchData(Z)V

    .line 212
    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 213
    iget-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 216
    .end local v0           #textureIdBuf:[I
    :cond_0
    iget v1, p0, Lcom/google/android/opengl/glview/NinePatch;->mTextureId:I

    return v1
.end method

.method public getVertexData()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/NinePatch;->ensureNinePatchData(Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;FF)V
    .locals 6
    .parameter "glCanvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 191
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/opengl/glview/NinePatch;->ensureNinePatchData(Z)V

    .line 192
    move v3, p2

    .line 193
    .local v3, w:F
    move v0, p3

    .line 194
    .local v0, h:F
    iget v4, p0, Lcom/google/android/opengl/glview/NinePatch;->mNaturalWidth:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 195
    .local v1, stretchX:F
    iget v4, p0, Lcom/google/android/opengl/glview/NinePatch;->mNaturalHeight:I

    int-to-float v4, v4

    sub-float v2, v0, v4

    .line 196
    .local v2, stretchY:F
    iget v4, p0, Lcom/google/android/opengl/glview/NinePatch;->mNaturalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/opengl/glview/NinePatch;->mNaturalHeight:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 197
    return-void
.end method
