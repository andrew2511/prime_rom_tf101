.class public Landroid/media/videoeditor/TransitionAlpha;
.super Landroid/media/videoeditor/Transition;
.source "TransitionAlpha.java"


# instance fields
.field private final mBlendingPercent:I

.field private mHeight:I

.field private final mIsInvert:Z

.field private final mMaskFilename:Ljava/lang/String;

.field private mRGBMaskFile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 67
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v7, v1

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V
    .registers 29
    .parameter "transitionId"
    .parameter "afterMediaItem"
    .parameter "beforeMediaItem"
    .parameter "durationMs"
    .parameter "behavior"
    .parameter "maskFilename"
    .parameter "blendingPercent"
    .parameter "invert"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 98
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v14, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_35

    .line 101
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_35
    move-object/from16 v0, p7

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    .line 105
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mask"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".rgb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    .line 111
    const/16 v16, 0x0

    .line 114
    .local v16, fl:Ljava/io/FileOutputStream;
    :try_start_86
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_93} :catch_ff

    .end local v16           #fl:Ljava/io/FileOutputStream;
    .local v17, fl:Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .line 118
    .end local v17           #fl:Ljava/io/FileOutputStream;
    .restart local v16       #fl:Ljava/io/FileOutputStream;
    :goto_95
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct/range {v15 .. v16}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    .local v15, dos:Ljava/io/DataOutputStream;
    if-eqz v16, :cond_e8

    .line 124
    invoke-static/range {p7 .. p7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 125
    .local v4, imageBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    move v6, v0

    new-array v5, v6, [I

    .line 126
    .local v5, framingBuffer:[I
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 129
    .local v13, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 130
    .local v12, array:[B
    const/4 v9, 0x0

    .line 131
    .local v9, tmp:I
    :goto_b3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    move v6, v0

    if-ge v9, v6, :cond_e2

    .line 132
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    move v10, v0

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 133
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    .line 134
    .local v18, intBuffer:Ljava/nio/IntBuffer;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    move v7, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 136
    :try_start_dc
    invoke-virtual {v15, v12}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_fb

    .line 140
    :goto_df
    add-int/lit8 v9, v9, 0x1

    goto :goto_b3

    .line 143
    .end local v18           #intBuffer:Ljava/nio/IntBuffer;
    :cond_e2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :try_start_e5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_fd

    .line 154
    .end local v4           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v5           #framingBuffer:[I
    .end local v9           #tmp:I
    .end local v12           #array:[B
    .end local v13           #byteBuffer:Ljava/nio/ByteBuffer;
    :cond_e8
    :goto_e8
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    .line 155
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    .line 156
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    .line 157
    return-void

    .line 137
    .restart local v4       #imageBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #framingBuffer:[I
    .restart local v9       #tmp:I
    .restart local v12       #array:[B
    .restart local v13       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v18       #intBuffer:Ljava/nio/IntBuffer;
    :catch_fb
    move-exception v6

    goto :goto_df

    .line 146
    .end local v18           #intBuffer:Ljava/nio/IntBuffer;
    :catch_fd
    move-exception v6

    goto :goto_e8

    .line 115
    .end local v4           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v5           #framingBuffer:[I
    .end local v9           #tmp:I
    .end local v12           #array:[B
    .end local v13           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v15           #dos:Ljava/io/DataOutputStream;
    :catch_ff
    move-exception v6

    goto :goto_95
.end method


# virtual methods
.method public generate()V
    .registers 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    .line 204
    return-void
.end method

.method public getBlendingPercent()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    return v0
.end method

.method public getMaskFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getPNGMaskFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRGBFileHeight()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    return v0
.end method

.method public getRGBFileWidth()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    return v0
.end method

.method public isInvert()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    return v0
.end method
