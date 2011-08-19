.class public Landroid/media/videoeditor/OverlayFrame;
.super Landroid/media/videoeditor/Overlay;
.source "OverlayFrame.java"


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFileName:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mOFHeight:I

.field private mOFWidth:I

.field private mResizedRGBHeight:I

.field private mResizedRGBWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 69
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v1, p0

    move-object v3, v2

    move-wide v7, v5

    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V
    .registers 15
    .parameter "mediaItem"
    .parameter "overlayId"
    .parameter "bitmap"
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 89
    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16
    .parameter "mediaItem"
    .parameter "overlayId"
    .parameter "filename"
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    const/4 v7, 0x0

    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 112
    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 115
    iput v7, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 116
    iput v7, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    .line 117
    return-void
.end method


# virtual methods
.method generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V
    .registers 40
    .parameter "mediaItemsList"
    .parameter "overlay"
    .parameter "height"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    move-object/from16 v33, p1

    .line 316
    .local v33, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual/range {v33 .. v33}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v28

    .line 318
    .local v28, renderMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v26

    .line 324
    .local v26, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v29

    .line 325
    .local v29, resizedRGBFileHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v30

    .line 328
    .local v30, resizedRGBFileWidth:I
    if-nez v30, :cond_18

    .line 329
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    .line 332
    :cond_18
    if-nez v29, :cond_1e

    .line 333
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    .line 336
    :cond_1e
    move/from16 v0, v30

    move/from16 v1, p4

    if-ne v0, v1, :cond_39

    move/from16 v0, v29

    move/from16 v1, p3

    if-ne v0, v1, :cond_39

    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_20a

    .line 341
    :cond_39
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p3

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 344
    .local v5, destBitmap:Landroid/graphics/Bitmap;
    new-instance v27, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .local v27, overlayCanvas:Landroid/graphics/Canvas;
    packed-switch v28, :pswitch_data_20c

    .line 418
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rendering mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    :pswitch_6b
    new-instance v18, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    .local v18, destRect:Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v32

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    .local v32, srcRect:Landroid/graphics/Rect;
    :goto_95
    sget-object v7, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v25

    .line 432
    .local v25, outFileName:Ljava/lang/String;
    if-eqz v25, :cond_b4

    .line 433
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 436
    :cond_b4
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 437
    .local v20, fl:Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/DataOutputStream;

    invoke-direct/range {v19 .. v20}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 442
    .local v19, dos:Ljava/io/DataOutputStream;
    move/from16 v0, p4

    new-array v0, v0, [I

    move-object v6, v0

    .line 443
    .local v6, framingBuffer:[I
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 446
    .local v17, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    .line 447
    .local v15, array:[B
    const/4 v10, 0x0

    .line 448
    .local v10, tmp:I
    :goto_d3
    move v0, v10

    move/from16 v1, p3

    if-ge v0, v1, :cond_1fb

    .line 449
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move/from16 v8, p4

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 450
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v21

    .line 451
    .local v21, intBuffer:Ljava/nio/IntBuffer;
    const/4 v7, 0x0

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v7

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 452
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 453
    add-int/lit8 v10, v10, 0x1

    goto :goto_d3

    .line 360
    .end local v6           #framingBuffer:[I
    .end local v10           #tmp:I
    .end local v15           #array:[B
    .end local v17           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v18           #destRect:Landroid/graphics/Rect;
    .end local v19           #dos:Ljava/io/DataOutputStream;
    .end local v20           #fl:Ljava/io/FileOutputStream;
    .end local v21           #intBuffer:Ljava/nio/IntBuffer;
    .end local v25           #outFileName:Ljava/lang/String;
    .end local v32           #srcRect:Landroid/graphics/Rect;
    :pswitch_f9
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v14, v7, v8

    .line 363
    .local v14, aROverlayImage:F
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v13, v7, v8

    .line 366
    .local v13, aRCanvas:F
    cmpl-float v7, v14, v13

    if-lez v7, :cond_15a

    .line 367
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int v23, v7, v8

    .line 369
    .local v23, newHeight:I
    const/16 v22, 0x0

    .line 370
    .local v22, left:I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    sub-int v7, v7, v23

    div-int/lit8 v34, v7, 0x2

    .line 371
    .local v34, top:I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    .line 372
    .local v31, right:I
    add-int v16, v34, v23

    .line 382
    .end local v23           #newHeight:I
    .local v16, bottom:I
    :goto_134
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 383
    .restart local v18       #destRect:Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v32

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    .restart local v32       #srcRect:Landroid/graphics/Rect;
    goto/16 :goto_95

    .line 374
    .end local v16           #bottom:I
    .end local v18           #destRect:Landroid/graphics/Rect;
    .end local v22           #left:I
    .end local v31           #right:I
    .end local v32           #srcRect:Landroid/graphics/Rect;
    .end local v34           #top:I
    :cond_15a
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int v24, v7, v8

    .line 376
    .local v24, newWidth:I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    sub-int v7, v7, v24

    div-int/lit8 v22, v7, 0x2

    .line 377
    .restart local v22       #left:I
    const/16 v34, 0x0

    .line 378
    .restart local v34       #top:I
    add-int v31, v22, v24

    .line 379
    .restart local v31       #right:I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v16

    .restart local v16       #bottom:I
    goto :goto_134

    .line 391
    .end local v13           #aRCanvas:F
    .end local v14           #aROverlayImage:F
    .end local v16           #bottom:I
    .end local v22           #left:I
    .end local v24           #newWidth:I
    .end local v31           #right:I
    .end local v34           #top:I
    :pswitch_17a
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v14, v7, v8

    .line 393
    .restart local v14       #aROverlayImage:F
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v13, v7, v8

    .line 395
    .restart local v13       #aRCanvas:F
    cmpg-float v7, v14, v13

    if-gez v7, :cond_1db

    .line 396
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int v23, v7, v8

    .line 399
    .restart local v23       #newHeight:I
    const/16 v22, 0x0

    .line 400
    .restart local v22       #left:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v7, v23

    div-int/lit8 v34, v7, 0x2

    .line 401
    .restart local v34       #top:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    .line 402
    .restart local v31       #right:I
    add-int v16, v34, v23

    .line 412
    .end local v23           #newHeight:I
    .restart local v16       #bottom:I
    :goto_1b5
    new-instance v32, Landroid/graphics/Rect;

    move-object/from16 v0, v32

    move/from16 v1, v22

    move/from16 v2, v34

    move/from16 v3, v31

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .restart local v32       #srcRect:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    .restart local v18       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_95

    .line 404
    .end local v16           #bottom:I
    .end local v18           #destRect:Landroid/graphics/Rect;
    .end local v22           #left:I
    .end local v31           #right:I
    .end local v32           #srcRect:Landroid/graphics/Rect;
    .end local v34           #top:I
    :cond_1db
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    div-int v24, v7, v8

    .line 406
    .restart local v24       #newWidth:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v7, v7, v24

    div-int/lit8 v22, v7, 0x2

    .line 407
    .restart local v22       #left:I
    const/16 v34, 0x0

    .line 408
    .restart local v34       #top:I
    add-int v31, v22, v24

    .line 409
    .restart local v31       #right:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .restart local v16       #bottom:I
    goto :goto_1b5

    .line 455
    .end local v13           #aRCanvas:F
    .end local v14           #aROverlayImage:F
    .end local v16           #bottom:I
    .end local v22           #left:I
    .end local v24           #newWidth:I
    .end local v31           #right:I
    .end local v34           #top:I
    .restart local v6       #framingBuffer:[I
    .restart local v10       #tmp:I
    .restart local v15       #array:[B
    .restart local v17       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v18       #destRect:Landroid/graphics/Rect;
    .restart local v19       #dos:Ljava/io/DataOutputStream;
    .restart local v20       #fl:Ljava/io/FileOutputStream;
    .restart local v25       #outFileName:Ljava/lang/String;
    .restart local v32       #srcRect:Landroid/graphics/Rect;
    :cond_1fb
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V

    .line 456
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 461
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    .line 463
    .end local v5           #destBitmap:Landroid/graphics/Bitmap;
    .end local v6           #framingBuffer:[I
    .end local v10           #tmp:I
    .end local v15           #array:[B
    .end local v17           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v18           #destRect:Landroid/graphics/Rect;
    .end local v19           #dos:Ljava/io/DataOutputStream;
    .end local v20           #fl:Ljava/io/FileOutputStream;
    .end local v25           #outFileName:Ljava/lang/String;
    .end local v27           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v32           #srcRect:Landroid/graphics/Rect;
    :cond_20a
    return-void

    .line 348
    nop

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_6b
        :pswitch_17a
    .end packed-switch
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getBitmapImageFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    return-object v0
.end method

.method getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method getOverlayFrameHeight()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    return v0
.end method

.method getOverlayFrameWidth()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    return v0
.end method

.method getResizedRGBSizeHeight()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return v0
.end method

.method getResizedRGBSizeWidth()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    return v0
.end method

.method invalidate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 280
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 284
    :cond_c
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 286
    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 289
    :cond_1c
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 290
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 291
    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 293
    :cond_2c
    return-void
.end method

.method invalidateGeneratedFiles()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 300
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 301
    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 304
    :cond_11
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 305
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 306
    iput-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 308
    :cond_21
    return-void
.end method

.method save(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 188
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 221
    :goto_6
    return-object v4

    .line 192
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Overlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 193
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_53

    .line 194
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, out:Ljava/io/FileOutputStream;
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 197
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 200
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_53
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    .line 201
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Overlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".rgb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 206
    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v1

    .line 211
    .local v1, nativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeHelperGetAspectRatio()I

    move-result v4

    invoke-static {v4}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v3

    .line 214
    .local v3, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v0, v3, v4

    .line 217
    .local v0, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v5, p0, v6, v4}, Landroid/media/videoeditor/OverlayFrame;->generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V

    .line 221
    iget-object v4, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    goto/16 :goto_6
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 144
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    .line 146
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 151
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 161
    :cond_22
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/videoeditor/OverlayFrame;->mStartTimeMs:J

    iget-wide v3, p0, Landroid/media/videoeditor/OverlayFrame;->mDurationMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 162
    return-void
.end method

.method setFilename(Ljava/lang/String;)V
    .registers 2
    .parameter "filename"

    .prologue
    .line 175
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 176
    return-void
.end method

.method setOverlayFrameHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 242
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    .line 243
    return-void
.end method

.method setOverlayFrameWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 249
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    .line 250
    return-void
.end method

.method setResizedRGBSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 256
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 257
    iput p2, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    .line 258
    return-void
.end method
