.class public Lcom/amazon/system/drawing/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# static fields
.field private static final APP0:B = -0x20t

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field public static final BMP_FORMAT:I = 0x1

.field private static final EOI:B = -0x27t

.field public static final GIF_FORMAT:I = 0x2

.field public static final JPG_FORMAT:I = 0x3

.field private static final SOB:B = -0x1t

.field private static final SOF0:B = -0x40t

.field private static final SOF1:B = -0x3ft

.field private static final SOF2:B = -0x3et

.field private static final SOF3:B = -0x3dt

.field private static final SOF5:B = -0x3bt

.field private static final SOF6:B = -0x3at

.field private static final SOF7:B = -0x39t

.field private static final SOF9:B = -0x37t

.field private static final SOFA:B = -0x36t

.field private static final SOFB:B = -0x35t

.field private static final SOFD:B = -0x33t

.field private static final SOFE:B = -0x32t

.field private static final SOFF:B = -0x31t

.field private static final SOI:B = -0x28t

.field private static final SOS:B = -0x26t

.field public static final UNKNOW_FORMAT:I = 0x63


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getARGBfromBMP([BLcom/amazon/system/drawing/Dimension;)[I
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 203
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v3, v0

    if-lez v3, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v3, v0

    if-gtz v3, :cond_1

    .line 205
    :cond_0
    const/16 p0, 0x0

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object/from16 p0, v0

    .line 457
    :goto_0
    return-object p0

    .line 210
    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v3

    .line 213
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v4

    .line 214
    const/16 v5, 0x16

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v5

    .line 215
    const/16 v6, 0x1a

    move-object/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort([BI)I

    move-result v6

    .line 216
    const/16 v7, 0x1c

    move-object/from16 v0, p0

    move v1, v7

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort([BI)I

    move-result v7

    .line 217
    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v8

    .line 218
    const/16 v9, 0x2e

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v9

    .line 220
    const/4 v10, 0x1

    sub-int v10, v5, v10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v11, v0

    div-int/2addr v10, v11

    .line 221
    const/4 v11, 0x1

    sub-int v11, v4, v11

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v12, v0

    div-int/2addr v11, v12

    .line 222
    if-ltz v11, :cond_2

    if-gez v10, :cond_4

    :cond_2
    const/4 v10, 0x1

    .line 223
    :goto_1
    const/4 v11, 0x1

    sub-int v11, v4, v11

    div-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p1

    iput v0, v1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 224
    const/4 v11, 0x1

    sub-int v11, v5, v11

    div-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p1

    iput v0, v1, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 226
    const/4 v11, 0x2

    if-lt v6, v11, :cond_6

    .line 228
    add-int/lit8 v6, v6, -0x2

    .line 235
    :goto_2
    if-nez v9, :cond_3

    const/16 v11, 0x8

    if-gt v7, v11, :cond_3

    .line 237
    const/4 v9, 0x1

    shl-int/2addr v9, v7

    .line 240
    :cond_3
    const/4 v11, 0x0

    .line 242
    if-lez v9, :cond_25

    .line 244
    new-array v11, v9, [I

    .line 246
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_8

    .line 248
    shl-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, 0x36

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v13

    const v14, 0xffffff

    and-int/2addr v13, v14

    .line 250
    if-ne v12, v6, :cond_7

    .line 253
    const/4 v13, 0x0

    aput v13, v11, v12

    .line 246
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 222
    :cond_4
    if-le v11, v10, :cond_5

    add-int/lit8 v10, v11, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 232
    :cond_6
    const/4 v6, -0x1

    goto :goto_2

    .line 258
    :cond_7
    const/high16 v14, -0x100

    add-int/2addr v13, v14

    aput v13, v11, v12

    goto :goto_4

    :cond_8
    move-object v6, v11

    .line 262
    :goto_5
    if-nez v8, :cond_10

    .line 265
    const/16 v5, 0x8

    if-ne v7, v5, :cond_b

    .line 267
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v7, v0

    mul-int/2addr v5, v7

    new-array v5, v5, [I

    .line 269
    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, -0x4

    .line 272
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v8, v0

    if-ge v7, v8, :cond_a

    .line 274
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    mul-int/2addr v8, v4

    mul-int/2addr v8, v10

    add-int/2addr v8, v3

    .line 276
    const/4 v9, 0x0

    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    :goto_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v11, v0

    if-ge v8, v11, :cond_9

    .line 278
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v11, v0

    mul-int/2addr v11, v7

    add-int/2addr v11, v8

    aget-byte v12, p0, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    aput v12, v5, v11

    .line 279
    add-int/2addr v9, v10

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 272
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 p0, v5

    .line 282
    goto/16 :goto_0

    .line 285
    :cond_b
    const/4 v5, 0x4

    if-ne v7, v5, :cond_1f

    .line 287
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v7, v0

    mul-int/2addr v5, v7

    new-array v5, v5, [I

    .line 288
    add-int/lit8 v7, v4, 0x7

    shr-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, -0x4

    .line 289
    shr-int/lit8 v8, v4, 0x1

    .line 290
    new-array v9, v4, [I

    .line 293
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v12, v0

    if-ge v11, v12, :cond_f

    .line 295
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v12, v0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    mul-int/2addr v12, v7

    mul-int/2addr v12, v10

    add-int/2addr v12, v3

    .line 296
    const/4 v13, 0x0

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v18

    :goto_9
    if-ge v12, v8, :cond_c

    .line 298
    add-int/lit8 v14, v13, 0x1

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    .line 299
    shl-int/lit8 v15, v12, 0x1

    shr-int/lit8 v16, v13, 0x4

    aget v16, v6, v16

    aput v16, v9, v15

    .line 300
    shl-int/lit8 v15, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    and-int/lit8 v13, v13, 0xf

    aget v13, v6, v13

    aput v13, v9, v15

    .line 296
    add-int/lit8 v12, v12, 0x1

    move v13, v14

    goto :goto_9

    .line 302
    :cond_c
    and-int/lit8 v12, v4, 0x1

    if-eqz v12, :cond_d

    .line 304
    const/4 v12, 0x1

    sub-int v12, v4, v12

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v13, v13, 0x4

    aget v13, v6, v13

    aput v13, v9, v12

    .line 306
    :cond_d
    const/4 v12, 0x0

    :goto_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v13, v0

    if-ge v12, v13, :cond_e

    .line 308
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v13, v0

    mul-int/2addr v13, v11

    add-int/2addr v13, v12

    mul-int v14, v12, v10

    aget v14, v9, v14

    aput v14, v5, v13

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 310
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 p0, v5

    .line 313
    goto/16 :goto_0

    .line 316
    :cond_10
    const/4 v7, 0x2

    if-eq v8, v7, :cond_11

    const/4 v7, 0x1

    if-ne v8, v7, :cond_1f

    .line 318
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    move v9, v0

    mul-int/2addr v7, v9

    new-array v7, v7, [I

    .line 319
    new-array v9, v4, [I

    .line 320
    const/4 v11, 0x0

    .line 321
    const/4 v12, 0x1

    sub-int/2addr v5, v12

    .line 327
    :cond_12
    :goto_b
    aget-byte v12, p0, v3

    if-nez v12, :cond_19

    .line 330
    add-int/lit8 v3, v3, 0x1

    .line 331
    aget-byte v12, p0, v3

    packed-switch v12, :pswitch_data_0

    .line 383
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 385
    const/4 v13, 0x1

    if-ne v8, v13, :cond_23

    move/from16 v18, v12

    move v12, v11

    move/from16 v11, v18

    .line 387
    :goto_c
    if-lez v3, :cond_21

    .line 389
    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    aput v11, v9, v12

    .line 387
    add-int/lit8 v3, v3, -0x1

    move v11, v14

    move v12, v13

    goto :goto_c

    .line 335
    :pswitch_0
    const/4 v11, 0x1

    sub-int v11, v10, v11

    and-int/2addr v11, v5

    if-nez v11, :cond_13

    .line 337
    div-int v11, v5, v10

    .line 338
    const/4 v12, 0x0

    :goto_d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v13, v0

    if-ge v12, v13, :cond_13

    .line 340
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move v13, v0

    mul-int/2addr v13, v11

    add-int/2addr v13, v12

    mul-int v14, v12, v10

    aget v14, v9, v14

    aput v14, v7, v13

    .line 338
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 343
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 344
    const/4 v11, 0x0

    .line 345
    add-int/lit8 v5, v5, -0x1

    .line 346
    if-gez v5, :cond_12

    :goto_e
    :pswitch_1
    move-object/from16 p0, v7

    .line 453
    goto/16 :goto_0

    .line 356
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 357
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 358
    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    .line 359
    if-gez v12, :cond_24

    const/4 v12, 0x0

    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    .line 361
    :cond_14
    :goto_f
    if-lez v5, :cond_16

    .line 363
    const/4 v14, 0x1

    sub-int v14, v10, v14

    and-int/2addr v14, v12

    if-nez v14, :cond_15

    .line 365
    div-int v14, v12, v10

    .line 366
    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 368
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v14

    add-int v16, v16, v15

    mul-int v17, v15, v10

    aget v17, v9, v17

    aput v17, v7, v16

    .line 369
    mul-int v16, v15, v10

    const/16 v17, 0x0

    aput v17, v9, v16

    .line 366
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 372
    :cond_15
    add-int/lit8 v12, v12, -0x1

    .line 373
    add-int/lit8 v5, v5, -0x1

    .line 374
    if-gez v12, :cond_14

    goto :goto_e

    .line 377
    :cond_16
    add-int/2addr v3, v11

    move v5, v12

    move v11, v3

    move v3, v13

    .line 379
    goto/16 :goto_b

    .line 395
    :goto_11
    const/4 v13, 0x1

    if-le v3, v13, :cond_18

    .line 397
    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    .line 398
    if-ge v12, v4, :cond_17

    .line 399
    add-int/lit8 v14, v12, 0x1

    shr-int/lit8 v15, v11, 0x4

    aget v15, v6, v15

    aput v15, v9, v12

    move v12, v14

    .line 401
    :cond_17
    if-ge v12, v4, :cond_22

    .line 402
    add-int/lit8 v14, v12, 0x1

    and-int/lit8 v11, v11, 0xf

    aget v11, v6, v11

    aput v11, v9, v12

    move v11, v14

    .line 395
    :goto_12
    add-int/lit8 v3, v3, -0x2

    move v12, v11

    move v11, v13

    goto :goto_11

    .line 405
    :cond_18
    const/4 v13, 0x1

    if-ne v3, v13, :cond_21

    .line 407
    if-ge v12, v4, :cond_21

    .line 408
    add-int/lit8 v3, v12, 0x1

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x4

    aget v11, v6, v11

    aput v11, v9, v12

    move v11, v3

    move v3, v13

    .line 412
    :goto_13
    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_12

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 419
    :cond_19
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 421
    const/4 v13, 0x1

    if-ne v8, v13, :cond_1b

    .line 423
    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    .line 425
    :goto_14
    if-lez v3, :cond_1a

    .line 427
    add-int/lit8 v14, v11, 0x1

    aput v12, v9, v11

    .line 425
    add-int/lit8 v3, v3, -0x1

    move v11, v14

    goto :goto_14

    :cond_1a
    move v3, v13

    .line 430
    goto/16 :goto_b

    .line 433
    :cond_1b
    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    .line 434
    shr-int/lit8 v14, v12, 0x4

    aget v14, v6, v14

    .line 435
    and-int/lit8 v12, v12, 0xf

    aget v12, v6, v12

    .line 437
    :goto_15
    const/4 v15, 0x1

    if-le v3, v15, :cond_1e

    .line 439
    if-ge v11, v4, :cond_1c

    .line 440
    add-int/lit8 v15, v11, 0x1

    aput v14, v9, v11

    move v11, v15

    .line 441
    :cond_1c
    if-ge v11, v4, :cond_1d

    .line 442
    add-int/lit8 v15, v11, 0x1

    aput v12, v9, v11

    move v11, v15

    .line 437
    :cond_1d
    add-int/lit8 v3, v3, -0x2

    goto :goto_15

    .line 444
    :cond_1e
    const/4 v12, 0x1

    if-ne v3, v12, :cond_20

    .line 446
    if-ge v11, v4, :cond_20

    .line 447
    add-int/lit8 v3, v11, 0x1

    aput v14, v9, v11

    move v11, v3

    move v3, v13

    goto/16 :goto_b

    .line 457
    :cond_1f
    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_20
    move v3, v13

    goto/16 :goto_b

    :cond_21
    move v3, v11

    move v11, v12

    goto :goto_13

    :cond_22
    move v11, v12

    goto :goto_12

    :cond_23
    move/from16 v18, v12

    move v12, v11

    move/from16 v11, v18

    goto/16 :goto_11

    :cond_24
    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    goto/16 :goto_f

    :cond_25
    move-object v6, v11

    goto/16 :goto_5

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getGIFBlockSize([BI)I
    .locals 4
    .parameter "gifData"
    .parameter "offset"

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, stop:Z
    const/4 v0, 0x0

    .line 517
    .local v0, blockSize:I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 519
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 520
    .local v2, subBlockSize:I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    .line 521
    if-nez v2, :cond_0

    .line 523
    const/4 v1, 0x1

    goto :goto_0

    .line 526
    .end local v2           #subBlockSize:I
    :cond_1
    return v0
.end method

.method public static getImageInfo([BLcom/amazon/system/drawing/Dimension;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const v6, 0xffff

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 76
    const/16 v0, 0x63

    .line 77
    if-nez p0, :cond_0

    .line 79
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 80
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 185
    :goto_0
    return v0

    .line 83
    :cond_0
    aget-byte v0, p0, v4

    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v2

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v5

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 85
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p0, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 88
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 89
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v1

    iput v1, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 90
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    iput v0, p1, Lcom/amazon/system/drawing/Dimension;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v5

    .line 97
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 95
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    goto :goto_1

    .line 98
    :cond_1
    aget-byte v0, p0, v4

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v2

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_2

    .line 100
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p0, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 103
    const/16 v1, 0xa

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 104
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 106
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 107
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/amazon/system/drawing/Dimension;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v2

    .line 114
    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 112
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    goto :goto_2

    .line 116
    :cond_2
    aget-byte v0, p0, v4

    if-ne v0, v7, :cond_6

    aget-byte v0, p0, v2

    const/16 v1, -0x28

    if-ne v0, v1, :cond_6

    aget-byte v0, p0, v5

    if-ne v0, v7, :cond_6

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    const/16 v1, -0x20

    if-ne v0, v1, :cond_6

    .line 119
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 120
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 121
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 122
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 123
    const/16 v1, 0x63

    .line 125
    :try_start_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v2

    and-int/2addr v2, v6

    .line 126
    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 127
    :goto_3
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v2

    if-eq v2, v7, :cond_3

    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v2

    .line 135
    const/16 v3, -0x26

    if-eq v2, v3, :cond_4

    const/16 v3, -0x27

    if-ne v2, v3, :cond_5

    :cond_4
    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 168
    :pswitch_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v2

    and-int/2addr v2, v6

    .line 169
    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 174
    :catch_2
    move-exception v0

    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 176
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    move v0, v1

    .line 178
    goto/16 :goto_0

    .line 159
    :pswitch_1
    const/4 v2, 0x3

    :try_start_3
    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 160
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v2

    and-int/2addr v2, v6

    iput v2, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 161
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v2

    and-int/2addr v2, v6

    iput v2, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 163
    const/4 v0, 0x3

    .line 165
    goto/16 :goto_0

    .line 181
    :cond_6
    const/16 v0, 0x63

    .line 182
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 183
    iput v4, p1, Lcom/amazon/system/drawing/Dimension;->height:I

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static removeApplicationExtensionBlockFromGIF([B)I
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 472
    array-length v0, p0

    .line 474
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p0, v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    const/16 v1, 0xa

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7

    .line 482
    add-int/lit8 v1, v1, 0x1

    shl-int v1, v3, v1

    .line 483
    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xd

    .line 484
    aget-byte v2, p0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v2

    move v2, v0

    move v0, v8

    .line 486
    :goto_1
    const/16 v3, 0x21

    if-ne v0, v3, :cond_3

    .line 488
    add-int/lit8 v0, v1, 0x1

    :try_start_1
    aget-byte v0, p0, v0

    .line 489
    add-int/lit8 v1, v1, 0x2

    .line 490
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 492
    invoke-static {p0, v1}, Lcom/amazon/system/drawing/ImageTools;->getGIFBlockSize([BI)I

    move-result v0

    .line 493
    add-int v3, v1, v0

    sub-int v4, v1, v7

    array-length v5, p0

    add-int v6, v1, v0

    sub-int/2addr v5, v6

    invoke-static {p0, v3, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    sub-int v0, v2, v0

    .line 495
    add-int/lit8 v1, v1, -0x2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 501
    :goto_2
    :try_start_2
    aget-byte v2, p0, v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move v8, v2

    move v2, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    .line 499
    :cond_2
    :try_start_3
    invoke-static {p0, v1}, Lcom/amazon/system/drawing/ImageTools;->getGIFBlockSize([BI)I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    :cond_3
    move v0, v2

    .line 503
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
