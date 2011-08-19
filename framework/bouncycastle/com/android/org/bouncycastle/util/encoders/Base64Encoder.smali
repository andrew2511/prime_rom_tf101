.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 25
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 30
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 43
    return-void

    .line 9
    :array_1a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 12
    .parameter "out"
    .parameter "c1"
    .parameter "c2"
    .parameter "c3"
    .parameter "c4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p4, v4, :cond_16

    .line 257
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 258
    .local v0, b1:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 260
    .local v1, b2:B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/4 v4, 0x1

    .line 286
    :goto_15
    return v4

    .line 264
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_16
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v4, :cond_38

    .line 266
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 267
    .restart local v0       #b1:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 268
    .restart local v1       #b2:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 270
    .local v2, b3:B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 271
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 273
    const/4 v4, 0x2

    goto :goto_15

    .line 277
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    :cond_38
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 278
    .restart local v0       #b1:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 279
    .restart local v1       #b2:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 280
    .restart local v2       #b3:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v4, p5

    .line 282
    .local v3, b4:B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 283
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 284
    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 286
    const/4 v4, 0x3

    goto :goto_15
.end method

.method private ignore(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 114
    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/16 v0, 0xd

    if-eq p1, v0, :cond_10

    const/16 v0, 0x9

    if-eq p1, v0, :cond_10

    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private nextI(Ljava/lang/String;II)I
    .registers 5
    .parameter "data"
    .parameter "i"
    .parameter "finish"

    .prologue
    .line 292
    :goto_0
    if-ge p2, p3, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 294
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 296
    :cond_f
    return p2
.end method

.method private nextI([BII)I
    .registers 5
    .parameter "data"
    .parameter "i"
    .parameter "finish"

    .prologue
    .line 182
    :goto_0
    if-ge p2, p3, :cond_e

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 186
    :cond_e
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 22
    .parameter "data"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/16 v18, 0x0

    .line 203
    .local v18, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 205
    .local v14, end:I
    :goto_6
    if-lez v14, :cond_1b

    .line 207
    const/4 v4, 0x1

    sub-int v4, v14, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_c7

    .line 215
    :cond_1b
    const/16 v16, 0x0

    .line 216
    .local v16, i:I
    const/4 v4, 0x4

    sub-int v15, v14, v4

    .line 218
    .local v15, finish:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v16

    move/from16 v17, v16

    .line 220
    .end local v16           #i:I
    .local v17, i:I
    :goto_2d
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_cb

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #i:I
    .restart local v16       #i:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v10, v4, v5

    .line 224
    .local v10, b1:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v16

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v11, v4, v5

    .line 228
    .local v11, b2:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v16

    .line 230
    .end local v17           #i:I
    .restart local v16       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v12, v4, v5

    .line 232
    .local v12, b3:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v16

    .line 234
    .end local v17           #i:I
    .restart local v16       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v13, v4, v5

    .line 236
    .local v13, b4:B
    shl-int/lit8 v4, v10, 0x2

    shr-int/lit8 v5, v11, 0x4

    or-int/2addr v4, v5

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 237
    shl-int/lit8 v4, v11, 0x4

    shr-int/lit8 v5, v12, 0x2

    or-int/2addr v4, v5

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 238
    shl-int/lit8 v4, v12, 0x6

    or-int/2addr v4, v13

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    add-int/lit8 v18, v18, 0x3

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v16

    .end local v17           #i:I
    .restart local v16       #i:I
    move/from16 v17, v16

    .end local v16           #i:I
    .restart local v17       #i:I
    goto/16 :goto_2d

    .line 212
    .end local v10           #b1:B
    .end local v11           #b2:B
    .end local v12           #b3:B
    .end local v13           #b4:B
    .end local v15           #finish:I
    .end local v17           #i:I
    :cond_c7
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_6

    .line 245
    .restart local v15       #finish:I
    .restart local v17       #i:I
    :cond_cb
    const/4 v4, 0x4

    sub-int v4, v14, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v4, 0x3

    sub-int v4, v14, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v4, 0x2

    sub-int v4, v14, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v4, 0x1

    sub-int v4, v14, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v4

    add-int v18, v18, v4

    .line 247
    return v18
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 24
    .parameter "data"
    .parameter "off"
    .parameter "length"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v18, 0x0

    .line 133
    .local v18, outLen:I
    add-int v14, p2, p3

    .line 135
    .local v14, end:I
    :goto_4
    move v0, v14

    move/from16 v1, p2

    if-le v0, v1, :cond_18

    .line 137
    const/4 v4, 0x1

    sub-int v4, v14, v4

    aget-byte v4, p1, v4

    int-to-char v4, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 145
    :cond_18
    move/from16 v16, p2

    .line 146
    .local v16, i:I
    const/4 v4, 0x4

    sub-int v15, v14, v4

    .line 148
    .local v15, finish:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    move/from16 v17, v16

    .line 150
    .end local v16           #i:I
    .local v17, i:I
    :goto_2a
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_af

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #i:I
    .restart local v16       #i:I
    aget-byte v5, p1, v17

    aget-byte v10, v4, v5

    .line 154
    .local v10, b1:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    aget-byte v5, p1, v16

    aget-byte v11, v4, v5

    .line 158
    .local v11, b2:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 160
    .end local v17           #i:I
    .restart local v16       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    aget-byte v5, p1, v16

    aget-byte v12, v4, v5

    .line 162
    .local v12, b3:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 164
    .end local v17           #i:I
    .restart local v16       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    move-object v4, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    aget-byte v5, p1, v16

    aget-byte v13, v4, v5

    .line 166
    .local v13, b4:B
    shl-int/lit8 v4, v10, 0x2

    shr-int/lit8 v5, v11, 0x4

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 167
    shl-int/lit8 v4, v11, 0x4

    shr-int/lit8 v5, v12, 0x2

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    shl-int/lit8 v4, v12, 0x6

    or-int/2addr v4, v13

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 170
    add-int/lit8 v18, v18, 0x3

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .end local v17           #i:I
    .restart local v16       #i:I
    move/from16 v17, v16

    .end local v16           #i:I
    .restart local v17       #i:I
    goto :goto_2a

    .line 142
    .end local v10           #b1:B
    .end local v11           #b2:B
    .end local v12           #b3:B
    .end local v13           #b4:B
    .end local v15           #finish:I
    .end local v17           #i:I
    :cond_ab
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    .line 175
    .restart local v15       #finish:I
    .restart local v17       #i:I
    :cond_af
    const/4 v4, 0x4

    sub-int v4, v14, v4

    aget-byte v4, p1, v4

    int-to-char v6, v4

    const/4 v4, 0x3

    sub-int v4, v14, v4

    aget-byte v4, p1, v4

    int-to-char v7, v4

    const/4 v4, 0x2

    sub-int v4, v14, v4

    aget-byte v4, p1, v4

    int-to-char v8, v4

    const/4 v4, 0x1

    sub-int v4, v14, v4

    aget-byte v4, p1, v4

    int-to-char v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v4

    add-int v18, v18, v4

    .line 177
    return v18
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 21
    .parameter "data"
    .parameter "off"
    .parameter "length"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    rem-int/lit8 v12, p3, 0x3

    .line 58
    .local v12, modulus:I
    sub-int v10, p3, v12

    .line 61
    .local v10, dataLength:I
    move/from16 v11, p2

    .local v11, i:I
    :goto_6
    add-int v13, p2, v10

    if-ge v11, v13, :cond_65

    .line 63
    aget-byte v13, p1, v11

    and-int/lit16 v2, v13, 0xff

    .line 64
    .local v2, a1:I
    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v3, v13, 0xff

    .line 65
    .local v3, a2:I
    add-int/lit8 v13, v11, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v4, v13, 0xff

    .line 67
    .local v4, a3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    ushr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0x3f

    aget-byte v13, v13, v14

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    shl-int/lit8 v14, v2, 0x4

    ushr-int/lit8 v15, v3, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v14, v14, 0x3f

    aget-byte v13, v13, v14

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    shl-int/lit8 v14, v3, 0x2

    ushr-int/lit8 v15, v4, 0x6

    or-int/2addr v14, v15

    and-int/lit8 v14, v14, 0x3f

    aget-byte v13, v13, v14

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    and-int/lit8 v14, v4, 0x3f

    aget-byte v13, v13, v14

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    add-int/lit8 v11, v11, 0x3

    goto :goto_6

    .line 79
    .end local v2           #a1:I
    .end local v3           #a2:I
    .end local v4           #a3:I
    :cond_65
    packed-switch v12, :pswitch_data_104

    .line 108
    :goto_68
    :pswitch_68
    div-int/lit8 v13, v10, 0x3

    mul-int/lit8 v13, v13, 0x4

    if-nez v12, :cond_101

    const/4 v14, 0x0

    :goto_6f
    add-int/2addr v13, v14

    return v13

    .line 84
    :pswitch_71
    add-int v13, p2, v10

    aget-byte v13, p1, v13

    and-int/lit16 v8, v13, 0xff

    .line 85
    .local v8, d1:I
    ushr-int/lit8 v13, v8, 0x2

    and-int/lit8 v5, v13, 0x3f

    .line 86
    .local v5, b1:I
    shl-int/lit8 v13, v8, 0x4

    and-int/lit8 v6, v13, 0x3f

    .line 88
    .local v6, b2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    aget-byte v13, v13, v5

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    aget-byte v13, v13, v6

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 90
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move v13, v0

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 91
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move v13, v0

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    .line 94
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v8           #d1:I
    :pswitch_b0
    add-int v13, p2, v10

    aget-byte v13, p1, v13

    and-int/lit16 v8, v13, 0xff

    .line 95
    .restart local v8       #d1:I
    add-int v13, p2, v10

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v9, v13, 0xff

    .line 97
    .local v9, d2:I
    ushr-int/lit8 v13, v8, 0x2

    and-int/lit8 v5, v13, 0x3f

    .line 98
    .restart local v5       #b1:I
    shl-int/lit8 v13, v8, 0x4

    ushr-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    and-int/lit8 v6, v13, 0x3f

    .line 99
    .restart local v6       #b2:I
    shl-int/lit8 v13, v9, 0x2

    and-int/lit8 v7, v13, 0x3f

    .line 101
    .local v7, b3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    aget-byte v13, v13, v5

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    aget-byte v13, v13, v6

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    move-object v13, v0

    aget-byte v13, v13, v7

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 104
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move v13, v0

    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_68

    .line 108
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v7           #b3:I
    .end local v8           #d1:I
    .end local v9           #d2:I
    :cond_101
    const/4 v14, 0x4

    goto/16 :goto_6f

    .line 79
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_68
        :pswitch_71
        :pswitch_b0
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .registers 5

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_12
    return-void
.end method
