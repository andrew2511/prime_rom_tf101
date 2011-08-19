.class abstract Lcom/android/gallery3d/ui/UploadedTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/UploadedTexture$1;,
        Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mContentValid:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/ui/UploadedTexture$1;)V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 53
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    .line 63
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 134
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 117
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture;->setSize(II)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 119
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mHeight:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot change size: this = %s, orig = %sx%s, new = %sx%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "vertical"
    .parameter "config"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 100
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 101
    .local v1, key:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 102
    iput-object p1, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 103
    iput p2, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    .line 104
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 105
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 106
    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 109
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    return-object v0

    .line 106
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    .line 188
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 191
    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 198
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v4

    .line 200
    .local v4, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 201
    .local v17, bitmap:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_3

    .line 205
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 206
    .local v20, width:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    .line 207
    .local v26, height:I
    sget-object v5, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 208
    sget-object v5, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v6, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    aput v7, v5, v6

    .line 209
    sget-object v5, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v6, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    aput v7, v5, v6

    .line 210
    sget-object v5, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v6, 0x3

    move/from16 v0, v26

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    aput v7, v5, v6

    .line 213
    const/4 v5, 0x1

    sget-object v6, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 214
    const/16 v5, 0xde1

    sget-object v6, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-interface {v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 215
    const/16 v5, 0xde1

    const v6, 0x8b9d

    sget-object v7, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 217
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    const v7, 0x812f

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 219
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    const v7, 0x812f

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 221
    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const v7, 0x46180400

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 223
    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const v7, 0x46180400

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v5

    move/from16 v0, v26

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 227
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 256
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 257
    sget-object v5, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    .line 258
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    .line 259
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 264
    return-void

    .line 229
    :cond_1
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 230
    .local v7, format:I
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v12

    .line 231
    .local v12, type:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v30

    .line 233
    .local v30, config:Landroid/graphics/Bitmap$Config;
    const/16 v5, 0xde1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    move v11, v7

    invoke-interface/range {v4 .. v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 236
    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v18, v7

    move/from16 v19, v12

    invoke-static/range {v13 .. v19}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 240
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v6

    move v0, v5

    move-object/from16 v1, v30

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 241
    .local v22, line:Landroid/graphics/Bitmap;
    const/16 v18, 0xde1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v23, v7

    move/from16 v24, v12

    invoke-static/range {v18 .. v24}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 245
    .end local v22           #line:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v5

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 246
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v6

    move v0, v5

    move-object/from16 v1, v30

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 247
    .restart local v22       #line:Landroid/graphics/Bitmap;
    const/16 v23, 0xde1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v22

    move/from16 v28, v7

    move/from16 v29, v12

    invoke-static/range {v23 .. v29}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 253
    .end local v7           #format:I
    .end local v12           #type:I
    .end local v20           #width:I
    .end local v22           #line:Landroid/graphics/Bitmap;
    .end local v26           #height:I
    .end local v30           #config:Landroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception v5

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    throw v5

    .line 261
    :cond_3
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    .line 262
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Texture load fail, no bitmap"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 155
    return-void
.end method

.method public isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 284
    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter "isOpaque"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 274
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .parameter "throttled"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    .line 96
    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-nez v2, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 176
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 177
    .local v5, format:I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 178
    .local v6, type:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    invoke-interface {v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    move v2, v1

    move v3, v1

    .line 179
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
