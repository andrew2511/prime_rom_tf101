.class abstract Lcom/android/camera/ui/BitmapTexture;
.super Lcom/android/camera/ui/BasicTexture;
.source "BitmapTexture.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/ui/BasicTexture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 18
    return-void
.end method

.method private uploadToGL(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 26
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ui/GLOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 38
    .local v18, bitmap:Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .line 39
    .local v22, glError:I
    if-eqz v18, :cond_2

    .line 40
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 44
    .local v24, textureId:[I
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 45
    .local v25, width:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 46
    .local v23, height:I
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v21, v5

    const/4 v5, 0x1

    aput v23, v21, v5

    const/4 v5, 0x2

    aput v25, v21, v5

    const/4 v5, 0x3

    move/from16 v0, v23

    neg-int v0, v0

    move v6, v0

    aput v6, v21, v5

    .line 49
    .local v21, cropRect:[I
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v24

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 50
    const/16 v5, 0xde1

    const/4 v6, 0x0

    aget v6, v24, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 51
    const/16 v5, 0xde1

    const v6, 0x8b9d

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 53
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    const v7, 0x812f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 55
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    const v7, 0x812f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 57
    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const v7, 0x46180400

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 59
    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const v7, 0x46180400

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 62
    invoke-static/range {v25 .. v25}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v9

    .line 63
    .local v9, widthExt:I
    invoke-static/range {v23 .. v23}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v10

    .line 64
    .local v10, heightExt:I
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 65
    .local v8, format:I
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v13

    .line 67
    .local v13, type:I
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mTextureWidth:I

    .line 68
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mTextureHeight:I

    .line 69
    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move v12, v8

    invoke-interface/range {v5 .. v14}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 71
    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v19, v8

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BitmapTexture;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const/16 v5, 0x505

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v5, Lcom/android/camera/ui/GLOutOfMemoryException;

    invoke-direct {v5}, Lcom/android/camera/ui/GLOutOfMemoryException;-><init>()V

    throw v5

    .line 74
    .end local v8           #format:I
    .end local v9           #widthExt:I
    .end local v10           #heightExt:I
    .end local v13           #type:I
    .end local v21           #cropRect:[I
    .end local v23           #height:I
    .end local v25           #width:I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BitmapTexture;->freeBitmap(Landroid/graphics/Bitmap;)V

    throw v5

    .line 79
    .restart local v8       #format:I
    .restart local v9       #widthExt:I
    .restart local v10       #heightExt:I
    .restart local v13       #type:I
    .restart local v21       #cropRect:[I
    .restart local v23       #height:I
    .restart local v25       #width:I
    :cond_0
    if-eqz v22, :cond_1

    .line 80
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mId:I

    .line 81
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mState:I

    .line 82
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Texture upload fail, glError "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/BitmapTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 87
    const/4 v5, 0x0

    aget v5, v24, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mId:I

    .line 88
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mState:I

    .line 94
    return-void

    .line 91
    .end local v8           #format:I
    .end local v9           #widthExt:I
    .end local v10           #heightExt:I
    .end local v13           #type:I
    .end local v21           #cropRect:[I
    .end local v23           #height:I
    .end local v24           #textureId:[I
    .end local v25           #width:I
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/BitmapTexture;->mState:I

    .line 92
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Texture load fail, no bitmap"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 98
    iget v1, p0, Lcom/android/camera/ui/BitmapTexture;->mState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/BitmapTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eq v1, p2, :cond_1

    .line 99
    :cond_0
    iput v2, p0, Lcom/android/camera/ui/BitmapTexture;->mState:I

    .line 101
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/BitmapTexture;->uploadToGL(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_0
    .catch Lcom/android/camera/ui/GLOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lcom/android/camera/ui/GLOutOfMemoryException;
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->handleLowMemory()V

    move v1, v2

    .line 104
    goto :goto_1

    .line 107
    .end local v0           #e:Lcom/android/camera/ui/GLOutOfMemoryException;
    :cond_1
    const/16 v1, 0xde1

    invoke-virtual {p0}, Lcom/android/camera/ui/BitmapTexture;->getId()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    goto :goto_0
.end method

.method protected abstract freeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/ui/BitmapTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 29
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/BitmapTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/ui/BitmapTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 23
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/BitmapTexture;->mWidth:I

    return v0
.end method
