.class public Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
.super Ljava/lang/Object;
.source "PageTurnRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PageTurnRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Texture"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBound:Z

.field private mTextureId:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBound:Z

    .line 225
    iput-object p1, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 226
    return-void
.end method

.method public static fromViewSnapshot(Landroid/view/View;)Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;
    .locals 2
    .parameter "view"

    .prologue
    .line 229
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 271
    add-int/lit8 p0, p0, -0x1

    .line 272
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 273
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 274
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 275
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 276
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 277
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public ensureBindTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 19
    .parameter "gl"

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBound:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 263
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 239
    .local v15, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 240
    .local v18, textures:[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    move v0, v3

    move-object/from16 v1, v18

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 242
    const/4 v3, 0x0

    aget v3, v18, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mTextureId:I

    .line 243
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mTextureId:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 245
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v5, 0x46180400

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 246
    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const v5, 0x46180400

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 248
    const/16 v3, 0xde1

    const/16 v4, 0x2802

    const v5, 0x47012f00

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 249
    const/16 v3, 0xde1

    const/16 v4, 0x2803

    const v5, 0x47012f00

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 251
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glTexEnvf(IIF)V

    .line 253
    invoke-static {v15}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 254
    .local v5, format:I
    invoke-static {v15}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v10

    .line 256
    .local v10, type:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->nextPowerOf2(I)I

    move-result v6

    .line 257
    .local v6, widthExt:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->nextPowerOf2(I)I

    move-result v7

    .line 259
    .local v7, heightExt:I
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v9, v5

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 260
    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v5

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 262
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBound:Z

    goto/16 :goto_0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mBound:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 267
    iget v0, p0, Lcom/google/android/apps/books/util/PageTurnRenderer$Texture;->mTextureId:I

    return v0
.end method
