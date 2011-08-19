.class public Lcom/google/android/street/DepthMap;
.super Ljava/lang/Object;
.source "DepthMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/DepthMap$Point;,
        Lcom/google/android/street/DepthMap$DepthMapPlane;
    }
.end annotation


# instance fields
.field private final compressedDepthMap:[B

.field private final compressedPanoMap:[B

.field private height:I

.field private isDecompressed:Z

.field private panoIds:[Ljava/lang/String;

.field private panoIndices:[B

.field private panoPoints:[Lcom/google/android/street/DepthMap$Point;

.field private planeIndices:[B

.field private planes:[Lcom/google/android/street/DepthMap$DepthMapPlane;

.field private width:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v0, p0, Lcom/google/android/street/DepthMap;->compressedDepthMap:[B

    .line 177
    iput-object v0, p0, Lcom/google/android/street/DepthMap;->compressedPanoMap:[B

    .line 178
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .parameter "compressedDepthMap"
    .parameter "compressedPanoMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/google/android/street/DepthMap;->compressedDepthMap:[B

    .line 162
    invoke-direct {p0}, Lcom/google/android/street/DepthMap;->readCompressedDepthMap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iput-object p2, p0, Lcom/google/android/street/DepthMap;->compressedPanoMap:[B

    .line 166
    invoke-direct {p0}, Lcom/google/android/street/DepthMap;->readCompressedPanoMap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 169
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    .line 170
    return-void
.end method

.method private floorAndUnwrap(FI)I
    .locals 1
    .parameter "pixel"
    .parameter "length"

    .prologue
    .line 422
    float-to-int v0, p1

    .line 425
    .local v0, p:I
    if-lt v0, p2, :cond_1

    .line 426
    sub-int/2addr v0, p2

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    if-gez v0, :cond_0

    .line 428
    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private getInputStream([B)Lcom/google/android/street/LEDataInputStream;
    .locals 3
    .parameter "compressedBytes"

    .prologue
    .line 562
    new-instance v0, Lcom/google/android/street/LEDataInputStream;

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/google/android/street/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private getMatrixCol(F)I
    .locals 2
    .parameter "yaw"

    .prologue
    .line 404
    iget v0, p0, Lcom/google/android/street/DepthMap;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/street/DepthMap;->width:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/DepthMap;->floorAndUnwrap(FI)I

    move-result v0

    return v0
.end method

.method private getMatrixRow(F)I
    .locals 2
    .parameter "pitch"

    .prologue
    .line 414
    const/high16 v0, 0x3f80

    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/DepthMap;->height:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/DepthMap;->height:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/DepthMap;->floorAndUnwrap(FI)I

    move-result v0

    return v0
.end method

.method private readCompressedDepthMap()Z
    .locals 13

    .prologue
    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 439
    iget-object v10, p0, Lcom/google/android/street/DepthMap;->compressedDepthMap:[B

    if-nez v10, :cond_0

    move v10, v12

    .line 486
    :goto_0
    return v10

    .line 443
    :cond_0
    iget-object v10, p0, Lcom/google/android/street/DepthMap;->compressedDepthMap:[B

    invoke-direct {p0, v10}, Lcom/google/android/street/DepthMap;->getInputStream([B)Lcom/google/android/street/LEDataInputStream;

    move-result-object v4

    .line 449
    .local v4, inputStream:Lcom/google/android/street/LEDataInputStream;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedByte()I

    move-result v2

    .line 450
    .local v2, headerSize:I
    if-eq v2, v11, :cond_1

    .line 451
    const-string v10, "Depth map has unexpected header size"

    invoke-static {v10}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    move v10, v12

    .line 452
    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 457
    .local v5, numPlanes:I
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v10

    iput v10, p0, Lcom/google/android/street/DepthMap;->width:I

    .line 459
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v10

    iput v10, p0, Lcom/google/android/street/DepthMap;->height:I

    .line 461
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedByte()I

    move-result v9

    .line 462
    .local v9, planeIndicesOffset:I
    if-eq v9, v11, :cond_2

    .line 463
    const-string v10, "Unexpected plane indices offset"

    invoke-static {v10}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    move v10, v12

    .line 464
    goto :goto_0

    .line 468
    :cond_2
    iget v10, p0, Lcom/google/android/street/DepthMap;->width:I

    iget v11, p0, Lcom/google/android/street/DepthMap;->height:I

    mul-int/2addr v10, v11

    new-array v10, v10, [B

    iput-object v10, p0, Lcom/google/android/street/DepthMap;->planeIndices:[B

    .line 469
    iget-object v10, p0, Lcom/google/android/street/DepthMap;->planeIndices:[B

    invoke-virtual {v4, v10}, Lcom/google/android/street/LEDataInputStream;->readFully([B)V

    .line 472
    new-array v10, v5, [Lcom/google/android/street/DepthMap$DepthMapPlane;

    iput-object v10, p0, Lcom/google/android/street/DepthMap;->planes:[Lcom/google/android/street/DepthMap$DepthMapPlane;

    .line 474
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 475
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v6

    .line 476
    .local v6, nx:F
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v7

    .line 477
    .local v7, ny:F
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v8

    .line 478
    .local v8, nz:F
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v0

    .line 479
    .local v0, d:F
    iget-object v10, p0, Lcom/google/android/street/DepthMap;->planes:[Lcom/google/android/street/DepthMap$DepthMapPlane;

    new-instance v11, Lcom/google/android/street/DepthMap$DepthMapPlane;

    invoke-direct {v11, v6, v7, v8, v0}, Lcom/google/android/street/DepthMap$DepthMapPlane;-><init>(FFFF)V

    aput-object v11, v10, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 481
    .end local v0           #d:F
    .end local v2           #headerSize:I
    .end local v3           #i:I
    .end local v5           #numPlanes:I
    .end local v6           #nx:F
    .end local v7           #ny:F
    .end local v8           #nz:F
    .end local v9           #planeIndicesOffset:I
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 482
    .local v1, e:Ljava/io/IOException;
    const-string v10, "Unable to decompress depth map"

    invoke-static {v10, v1}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v10, v12

    .line 483
    goto :goto_0

    .line 486
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #headerSize:I
    .restart local v3       #i:I
    .restart local v5       #numPlanes:I
    .restart local v9       #planeIndicesOffset:I
    :cond_3
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private readCompressedPanoMap()Z
    .locals 15

    .prologue
    const/16 v12, 0x8

    const/4 v14, 0x0

    .line 495
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->compressedPanoMap:[B

    if-nez v11, :cond_0

    move v11, v14

    .line 554
    :goto_0
    return v11

    .line 499
    :cond_0
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->compressedPanoMap:[B

    invoke-direct {p0, v11}, Lcom/google/android/street/DepthMap;->getInputStream([B)Lcom/google/android/street/LEDataInputStream;

    move-result-object v4

    .line 505
    .local v4, inputStream:Lcom/google/android/street/LEDataInputStream;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedByte()I

    move-result v2

    .line 506
    .local v2, headerSize:I
    if-eq v2, v12, :cond_1

    .line 507
    const-string v11, "Pano map has unexpected header size"

    invoke-static {v11}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    move v11, v14

    .line 508
    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 513
    .local v7, numPanoIds:I
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 515
    .local v10, w:I
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 516
    .local v1, h:I
    iget v11, p0, Lcom/google/android/street/DepthMap;->width:I

    if-ne v11, v10, :cond_2

    iget v11, p0, Lcom/google/android/street/DepthMap;->height:I

    if-eq v11, v1, :cond_3

    .line 517
    :cond_2
    const-string v11, "Pano matrix dimensions don\'t match plane matrix."

    invoke-static {v11}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    move v11, v14

    .line 518
    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readUnsignedByte()I

    move-result v8

    .line 522
    .local v8, panoIndicesOffset:I
    if-eq v8, v12, :cond_4

    .line 523
    const-string v11, "Unexpected pano indices offset"

    invoke-static {v11}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    move v11, v14

    .line 524
    goto :goto_0

    .line 528
    :cond_4
    iget v11, p0, Lcom/google/android/street/DepthMap;->width:I

    iget v12, p0, Lcom/google/android/street/DepthMap;->height:I

    mul-int/2addr v11, v12

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/google/android/street/DepthMap;->panoIndices:[B

    .line 529
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->panoIndices:[B

    invoke-virtual {v4, v11}, Lcom/google/android/street/LEDataInputStream;->readFully([B)V

    .line 532
    new-array v11, v7, [Ljava/lang/String;

    iput-object v11, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    .line 533
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 534
    const/16 v11, 0x16

    new-array v9, v11, [B

    .line 535
    .local v9, tmpPanoIdBytes:[B
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_5

    .line 536
    invoke-virtual {v4, v9}, Lcom/google/android/street/LEDataInputStream;->readFully([B)V

    .line 537
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v9}, Ljava/lang/String;-><init>([B)V

    aput-object v12, v11, v3

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 541
    :cond_5
    new-array v11, v7, [Lcom/google/android/street/DepthMap$Point;

    iput-object v11, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    .line 542
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 544
    const/4 v3, 0x1

    :goto_2
    if-ge v3, v7, :cond_6

    .line 545
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v5

    .line 546
    .local v5, lat:F
    invoke-virtual {v4}, Lcom/google/android/street/LEDataInputStream;->readFloat()F

    move-result v6

    .line 547
    .local v6, lng:F
    iget-object v11, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    new-instance v12, Lcom/google/android/street/DepthMap$Point;

    invoke-direct {v12, v5, v6}, Lcom/google/android/street/DepthMap$Point;-><init>(FF)V

    aput-object v12, v11, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    .end local v1           #h:I
    .end local v2           #headerSize:I
    .end local v3           #i:I
    .end local v5           #lat:F
    .end local v6           #lng:F
    .end local v7           #numPanoIds:I
    .end local v8           #panoIndicesOffset:I
    .end local v9           #tmpPanoIdBytes:[B
    .end local v10           #w:I
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 550
    .local v0, e:Ljava/io/IOException;
    const-string v11, "Unable to decompress pano map"

    invoke-static {v11, v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v11, v14

    .line 551
    goto/16 :goto_0

    .line 554
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #h:I
    .restart local v2       #headerSize:I
    .restart local v3       #i:I
    .restart local v7       #numPanoIds:I
    .restart local v8       #panoIndicesOffset:I
    .restart local v9       #tmpPanoIdBytes:[B
    .restart local v10       #w:I
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public assertDecompressed()V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Depth map must be decompressed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-void
.end method

.method public compress()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 212
    :goto_0
    return v0

    .line 206
    :cond_0
    iput-object v1, p0, Lcom/google/android/street/DepthMap;->planeIndices:[B

    .line 207
    iput-object v1, p0, Lcom/google/android/street/DepthMap;->planes:[Lcom/google/android/street/DepthMap$DepthMapPlane;

    .line 208
    iput-object v1, p0, Lcom/google/android/street/DepthMap;->panoIndices:[B

    .line 209
    iput-object v1, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    .line 211
    iput-boolean v2, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeDepthAndNormal(FF[F)F
    .locals 8
    .parameter "yaw"
    .parameter "pitch"
    .parameter "normal"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/DepthMap;->getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;

    move-result-object v2

    .line 289
    .local v2, plane:Lcom/google/android/street/DepthMap$DepthMapPlane;
    if-nez v2, :cond_0

    .line 290
    const/4 v3, 0x0

    .line 310
    :goto_0
    return v3

    .line 294
    :cond_0
    if-eqz p3, :cond_1

    array-length v3, p3

    if-lt v3, v7, :cond_1

    .line 295
    iget v3, v2, Lcom/google/android/street/DepthMap$DepthMapPlane;->nx:F

    aput v3, p3, v4

    .line 297
    iget v3, v2, Lcom/google/android/street/DepthMap$DepthMapPlane;->nz:F

    neg-float v3, v3

    aput v3, p3, v5

    .line 298
    iget v3, v2, Lcom/google/android/street/DepthMap$DepthMapPlane;->ny:F

    aput v3, p3, v6

    .line 304
    :cond_1
    new-array v1, v7, [F

    .line 305
    .local v1, dirVector:[F
    invoke-static {p1, p2, v1, v4}, Lcom/google/android/street/StreetMath;->sphericalToRectangularCoords(FF[FI)V

    .line 307
    aget v3, v1, v4

    aget v4, v1, v6

    neg-float v4, v4

    aget v5, v1, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/street/DepthMap$DepthMapPlane;->directionDepth(FFF)F

    move-result v0

    .local v0, depth:F
    move v3, v0

    .line 310
    goto :goto_0
.end method

.method public decompress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-boolean v0, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/google/android/street/DepthMap;->readCompressedDepthMap()Z

    .line 191
    invoke-direct {p0}, Lcom/google/android/street/DepthMap;->readCompressedPanoMap()Z

    .line 192
    iput-boolean v1, p0, Lcom/google/android/street/DepthMap;->isDecompressed:Z

    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public getCompressedDepthMap()[B
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/street/DepthMap;->compressedDepthMap:[B

    return-object v0
.end method

.method public getCompressedPanoMap()[B
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/street/DepthMap;->compressedPanoMap:[B

    return-object v0
.end method

.method public getPanoId(FF[F)Ljava/lang/String;
    .locals 11
    .parameter "yaw"
    .parameter "pitch"
    .parameter "newYawPitch"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/street/DepthMap;->getMatrixCol(F)I

    move-result v0

    .line 332
    .local v0, col:I
    invoke-direct {p0, p2}, Lcom/google/android/street/DepthMap;->getMatrixRow(F)I

    move-result v6

    .line 335
    .local v6, row:I
    iget-object v7, p0, Lcom/google/android/street/DepthMap;->panoIndices:[B

    iget v8, p0, Lcom/google/android/street/DepthMap;->width:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v0

    aget-byte v7, v7, v8

    and-int/lit16 v4, v7, 0xff

    .line 337
    .local v4, panoIndex:I
    if-eqz p3, :cond_1

    if-lez v4, :cond_1

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/DepthMap;->getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;

    move-result-object v5

    .line 342
    .local v5, plane:Lcom/google/android/street/DepthMap$DepthMapPlane;
    const/4 v7, 0x3

    new-array v2, v7, [F

    .line 343
    .local v2, dirVector:[F
    const/4 v7, 0x0

    invoke-static {p1, p2, v2, v7}, Lcom/google/android/street/StreetMath;->sphericalToRectangularCoords(FF[FI)V

    .line 345
    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    neg-float v8, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/google/android/street/DepthMap$DepthMapPlane;->directionDepth(FFF)F

    move-result v1

    .line 347
    .local v1, depth:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-ge v3, v7, :cond_0

    .line 348
    aget v7, v2, v3

    mul-float/2addr v7, v1

    aput v7, v2, v3

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    iget-object v8, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/google/android/street/DepthMap$Point;->x:F

    sub-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x2

    aget v9, v2, v9

    iget-object v10, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/google/android/street/DepthMap$Point;->y:F

    add-float/2addr v9, v10

    invoke-static {v7, v8, v9, p3}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 364
    .end local v1           #depth:F
    .end local v2           #dirVector:[F
    .end local v3           #i:I
    .end local v5           #plane:Lcom/google/android/street/DepthMap$DepthMapPlane;
    :cond_1
    iget-object v7, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    aget-object v7, v7, v4

    return-object v7
.end method

.method public getPanoId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 585
    iget-object v0, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPanoPoint(FF)Lcom/google/android/street/DepthMap$Point;
    .locals 5
    .parameter "yaw"
    .parameter "pitch"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 374
    invoke-direct {p0, p1}, Lcom/google/android/street/DepthMap;->getMatrixCol(F)I

    move-result v0

    .line 375
    .local v0, col:I
    invoke-direct {p0, p2}, Lcom/google/android/street/DepthMap;->getMatrixRow(F)I

    move-result v2

    .line 378
    .local v2, row:I
    iget-object v3, p0, Lcom/google/android/street/DepthMap;->panoIndices:[B

    iget v4, p0, Lcom/google/android/street/DepthMap;->width:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 380
    .local v1, panoIndex:I
    invoke-virtual {p0, v1}, Lcom/google/android/street/DepthMap;->getPanoPoint(I)Lcom/google/android/street/DepthMap$Point;

    move-result-object v3

    return-object v3
.end method

.method public getPanoPoint(I)Lcom/google/android/street/DepthMap$Point;
    .locals 1
    .parameter "index"

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 580
    iget-object v0, p0, Lcom/google/android/street/DepthMap;->panoPoints:[Lcom/google/android/street/DepthMap$Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;
    .locals 2
    .parameter "yaw"
    .parameter "pitch"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/DepthMap;->getPlaneIndex(FF)I

    move-result v0

    .line 262
    .local v0, planeIndex:I
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/android/street/DepthMap;->planes:[Lcom/google/android/street/DepthMap$DepthMapPlane;

    aget-object v1, v1, v0

    .line 265
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlaneIndex(FF)I
    .locals 5
    .parameter "yaw"
    .parameter "pitch"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/street/DepthMap;->getMatrixCol(F)I

    move-result v0

    .line 240
    .local v0, col:I
    invoke-direct {p0, p2}, Lcom/google/android/street/DepthMap;->getMatrixRow(F)I

    move-result v2

    .line 243
    .local v2, row:I
    iget-object v3, p0, Lcom/google/android/street/DepthMap;->planeIndices:[B

    iget v4, p0, Lcom/google/android/street/DepthMap;->width:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 244
    .local v1, planeIndex:I
    return v1
.end method

.method public isGround(FF)Z
    .locals 2
    .parameter "yaw"
    .parameter "pitch"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/DepthMap;->getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;

    move-result-object v0

    .line 394
    .local v0, plane:Lcom/google/android/street/DepthMap$DepthMapPlane;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/street/DepthMap$DepthMapPlane;->isGround()Z

    move-result v1

    goto :goto_0
.end method

.method public numPanos()I
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/android/street/DepthMap;->assertDecompressed()V

    .line 590
    iget-object v0, p0, Lcom/google/android/street/DepthMap;->panoIds:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
