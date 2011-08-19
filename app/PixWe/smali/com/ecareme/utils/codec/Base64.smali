.class public Lcom/ecareme/utils/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_CHARS:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    new-array v2, v4, [B

    sput-object v2, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    .line 80
    new-array v2, v4, [C

    sput-object v2, Lcom/ecareme/utils/codec/Base64;->EMPTY_CHARS:[C

    .line 82
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/ecareme/utils/codec/Base64;->CA:[C

    .line 83
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/ecareme/utils/codec/Base64;->IA:[I

    .line 85
    sget-object v2, Lcom/ecareme/utils/codec/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/ecareme/utils/codec/Base64;->CA:[C

    array-length v1, v2

    .local v1, iS:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 88
    sget-object v2, Lcom/ecareme/utils/codec/Base64;->IA:[I

    const/16 v3, 0x3d

    aput v4, v2, v3

    .line 77
    return-void

    .line 87
    :cond_0
    sget-object v2, Lcom/ecareme/utils/codec/Base64;->IA:[I

    sget-object v3, Lcom/ecareme/utils/codec/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 14
    .parameter "str"

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 526
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    .line 573
    :goto_0
    return-object v12

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 529
    .local v10, sLen:I
    if-nez v10, :cond_1

    .line 531
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    goto :goto_0

    .line 536
    :cond_1
    const/4 v11, 0x0

    .line 537
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v10, :cond_2

    .line 542
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 543
    const/4 v12, 0x0

    goto :goto_0

    .line 538
    :cond_2
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 539
    add-int/lit8 v11, v11, 0x1

    .line 537
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 546
    :cond_4
    const/4 v7, 0x0

    .line 547
    .local v7, pad:I
    move v4, v10

    :cond_5
    :goto_2
    const/4 v12, 0x1

    if-le v4, v12, :cond_6

    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-lez v12, :cond_7

    .line 551
    :cond_6
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 553
    .local v6, len:I
    new-array v3, v6, [B

    .line 555
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_3
    if-lt v2, v6, :cond_8

    move-object v12, v3

    .line 573
    goto :goto_0

    .line 548
    .end local v2           #d:I
    .end local v3           #dArr:[B
    .end local v6           #len:I
    .end local v8           #s:I
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 549
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 557
    .restart local v2       #d:I
    .restart local v3       #dArr:[B
    .restart local v6       #len:I
    .restart local v8       #s:I
    :cond_8
    const/4 v4, 0x0

    .line 558
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_4
    const/4 v12, 0x4

    if-lt v5, v12, :cond_a

    .line 566
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 567
    if-ge v1, v6, :cond_9

    .line 568
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 569
    if-ge v2, v6, :cond_c

    .line 570
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_9
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3

    .line 559
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_a
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 560
    .local v0, c:I
    if-ltz v0, :cond_b

    .line 561
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 558
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_4

    .line 563
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_c
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3
.end method

.method public static final decode([B)[B
    .locals 14
    .parameter "sArr"

    .prologue
    .line 371
    array-length v10, p0

    .line 375
    .local v10, sLen:I
    const/4 v11, 0x0

    .line 376
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v10, :cond_0

    .line 381
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 382
    const/4 v12, 0x0

    .line 413
    :goto_1
    return-object v12

    .line 377
    :cond_0
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_1

    .line 378
    add-int/lit8 v11, v11, 0x1

    .line 376
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_2
    const/4 v7, 0x0

    .line 385
    .local v7, pad:I
    move v4, v10

    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-le v4, v12, :cond_4

    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-lez v12, :cond_5

    .line 389
    :cond_4
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 391
    .local v6, len:I
    new-array v3, v6, [B

    .line 393
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_3
    if-lt v2, v6, :cond_6

    move-object v12, v3

    .line 413
    goto :goto_1

    .line 386
    .end local v2           #d:I
    .end local v3           #dArr:[B
    .end local v6           #len:I
    .end local v8           #s:I
    :cond_5
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 387
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 395
    .restart local v2       #d:I
    .restart local v3       #dArr:[B
    .restart local v6       #len:I
    .restart local v8       #s:I
    :cond_6
    const/4 v4, 0x0

    .line 396
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_4
    const/4 v12, 0x4

    if-lt v5, v12, :cond_8

    .line 405
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 406
    if-ge v1, v6, :cond_7

    .line 407
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 408
    if-ge v2, v6, :cond_a

    .line 409
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_7
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3

    .line 397
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_8
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 398
    .local v0, c:I
    if-ltz v0, :cond_9

    .line 399
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 396
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_4

    .line 401
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_a
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3
.end method

.method public static final decode([C)[B
    .locals 14
    .parameter "sArr"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 173
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    .line 219
    :goto_0
    return-object v12

    .line 175
    :cond_0
    array-length v10, p0

    .line 176
    .local v10, sLen:I
    if-nez v10, :cond_1

    .line 178
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    goto :goto_0

    .line 183
    :cond_1
    const/4 v11, 0x0

    .line 184
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v10, :cond_2

    .line 189
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 190
    const/4 v12, 0x0

    goto :goto_0

    .line 185
    :cond_2
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 186
    add-int/lit8 v11, v11, 0x1

    .line 184
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :cond_4
    const/4 v7, 0x0

    .line 193
    .local v7, pad:I
    move v4, v10

    :cond_5
    :goto_2
    const/4 v12, 0x1

    if-le v4, v12, :cond_6

    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-lez v12, :cond_7

    .line 197
    :cond_6
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 199
    .local v6, len:I
    new-array v3, v6, [B

    .line 201
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_3
    if-lt v2, v6, :cond_8

    move-object v12, v3

    .line 219
    goto :goto_0

    .line 194
    .end local v2           #d:I
    .end local v3           #dArr:[B
    .end local v6           #len:I
    .end local v8           #s:I
    :cond_7
    aget-char v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 203
    .restart local v2       #d:I
    .restart local v3       #dArr:[B
    .restart local v6       #len:I
    .restart local v8       #s:I
    :cond_8
    const/4 v4, 0x0

    .line 204
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_4
    const/4 v12, 0x4

    if-lt v5, v12, :cond_a

    .line 212
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 213
    if-ge v1, v6, :cond_9

    .line 214
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 215
    if-ge v2, v6, :cond_c

    .line 216
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_9
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3

    .line 205
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_a
    sget-object v12, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    aget-char v13, p0, v9

    aget v0, v12, v13

    .line 206
    .local v0, c:I
    if-ltz v0, :cond_b

    .line 207
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 204
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_4

    .line 209
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_c
    move v8, v9

    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 12
    .parameter "s"

    .prologue
    .line 588
    if-nez p0, :cond_0

    .line 590
    const/4 p0, 0x0

    .line 642
    .end local p0
    :goto_0
    return-object p0

    .line 592
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 593
    .local v3, sLen:I
    if-nez v3, :cond_1

    .line 594
    sget-object p0, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    goto :goto_0

    .line 596
    :cond_1
    const/4 v1, 0x0

    .local v1, sIx:I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, eIx:I
    move v2, v1

    .line 599
    .end local v1           #sIx:I
    .local v2, sIx:I
    :goto_1
    if-ge v2, v0, :cond_e

    sget-object v1, Lcom/ecareme/utils/codec/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    if-ltz v1, :cond_3

    move v4, v0

    .line 603
    .end local v0           #eIx:I
    .local v4, eIx:I
    :goto_2
    if-lez v4, :cond_2

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    if-ltz v0, :cond_4

    .line 607
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    move v8, v0

    .line 608
    .local v8, pad:I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 609
    .local v0, cCnt:I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_8

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .end local v3           #sLen:I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 611
    .local v10, sepCnt:I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 612
    .local v7, len:I
    new-array v3, v7, [B

    .line 615
    .end local v0           #cCnt:I
    .local v3, dArr:[B
    const/4 v1, 0x0

    .line 616
    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, eLen:I
    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_6
    if-lt v2, v5, :cond_9

    .line 632
    if-ge v2, v7, :cond_c

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .local v5, j:I
    move v9, v6

    .end local v6           #sIx:I
    .local v9, sIx:I
    move v1, v0

    .end local v0           #i:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_a

    .line 638
    const/16 p0, 0x10

    .local p0, r:I
    move v0, v2

    .end local v2           #d:I
    .local v0, d:I
    move v2, p0

    .end local v4           #eIx:I
    .end local p0           #r:I
    .local v2, r:I
    :goto_8
    if-lt v0, v7, :cond_b

    move p0, v0

    .end local v0           #d:I
    .local p0, d:I
    move v0, v9

    .end local v1           #i:I
    .end local v2           #r:I
    .end local v5           #j:I
    .end local v9           #sIx:I
    .local v0, sIx:I
    :goto_9
    move-object p0, v3

    .line 642
    goto :goto_0

    .line 600
    .end local v7           #len:I
    .end local v8           #pad:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    .local p0, s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #sIx:I
    .local v1, sIx:I
    move v2, v1

    .end local v1           #sIx:I
    .restart local v2       #sIx:I
    goto :goto_1

    .line 604
    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    :cond_4
    add-int/lit8 v0, v4, -0x1

    .end local v4           #eIx:I
    .restart local v0       #eIx:I
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto :goto_2

    .line 607
    :cond_5
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 609
    .end local v3           #sLen:I
    .local v0, cCnt:I
    .restart local v8       #pad:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3       #sLen:I
    :cond_8
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 618
    .local v0, cc:I
    .local v2, d:I
    .local v3, dArr:[B
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v7       #len:I
    .restart local v10       #sepCnt:I
    :cond_9
    sget-object v9, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1           #sIx:I
    .restart local v6       #sIx:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1           #sIx:I
    .restart local v9       #sIx:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 621
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 622
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 623
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 626
    .end local v6           #i:I
    if-lez v10, :cond_d

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_d

    .line 627
    add-int/lit8 v2, v9, 0x2

    .line 628
    .end local v9           #sIx:I
    .local v2, sIx:I
    const/4 v0, 0x0

    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    goto :goto_6

    .line 636
    .end local v0           #cc:I
    .end local v6           #sIx:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    .local v5, j:I
    .restart local v9       #sIx:I
    :cond_a
    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 635
    .end local v1           #i:I
    .local v0, i:I
    add-int/lit8 v1, v5, 0x1

    .end local v5           #j:I
    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .restart local v5       #j:I
    move v9, v6

    .end local v6           #sIx:I
    .restart local v9       #sIx:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    goto/16 :goto_7

    .line 639
    .end local v4           #eIx:I
    .end local p0           #s:Ljava/lang/String;
    .local v0, d:I
    .local v2, r:I
    :cond_b
    add-int/lit8 p0, v0, 0x1

    .end local v0           #d:I
    .local p0, d:I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 638
    add-int/lit8 v0, v2, -0x8

    .end local v2           #r:I
    .local v0, r:I
    move v2, v0

    .end local v0           #r:I
    .restart local v2       #r:I
    move v0, p0

    .end local p0           #d:I
    .local v0, d:I
    goto/16 :goto_8

    .end local v1           #i:I
    .end local v9           #sIx:I
    .local v0, cc:I
    .local v2, d:I
    .restart local v4       #eIx:I
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v10       #sepCnt:I
    .local p0, s:Ljava/lang/String;
    :cond_c
    move p0, v2

    .end local v2           #d:I
    .local p0, d:I
    move v0, v6

    .end local v6           #sIx:I
    .local v0, sIx:I
    goto/16 :goto_9

    .local v0, cc:I
    .local v1, d:I
    .restart local v9       #sIx:I
    .local p0, s:Ljava/lang/String;
    :cond_d
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v9

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    goto/16 :goto_6

    .end local v4           #eIx:I
    .end local v5           #eLen:I
    .end local v6           #sIx:I
    .end local v7           #len:I
    .end local v8           #pad:I
    .end local v10           #sepCnt:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    :cond_e
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto/16 :goto_2
.end method

.method public static final decodeFast([B)[B
    .locals 12
    .parameter "sArr"

    .prologue
    .line 429
    if-nez p0, :cond_0

    .line 431
    const/4 p0, 0x0

    .line 483
    .end local p0
    :goto_0
    return-object p0

    .line 433
    .restart local p0
    :cond_0
    array-length v3, p0

    .line 434
    .local v3, sLen:I
    if-nez v3, :cond_1

    .line 435
    sget-object p0, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    goto :goto_0

    .line 437
    :cond_1
    const/4 v1, 0x0

    .local v1, sIx:I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, eIx:I
    move v2, v1

    .line 440
    .end local v1           #sIx:I
    .local v2, sIx:I
    :goto_1
    if-ge v2, v0, :cond_e

    sget-object v1, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    if-ltz v1, :cond_3

    move v4, v0

    .line 444
    .end local v0           #eIx:I
    .local v4, eIx:I
    :goto_2
    if-lez v4, :cond_2

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    if-ltz v0, :cond_4

    .line 448
    :cond_2
    aget-byte v0, p0, v4

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    sub-int v0, v4, v0

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    move v8, v0

    .line 449
    .local v8, pad:I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 450
    .local v0, cCnt:I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_8

    const/16 v1, 0x4c

    aget-byte v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .end local v3           #sLen:I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 452
    .local v10, sepCnt:I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 453
    .local v7, len:I
    new-array v3, v7, [B

    .line 456
    .end local v0           #cCnt:I
    .local v3, dArr:[B
    const/4 v1, 0x0

    .line 457
    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, eLen:I
    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_6
    if-lt v2, v5, :cond_9

    .line 473
    if-ge v2, v7, :cond_c

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .local v5, j:I
    move v9, v6

    .end local v6           #sIx:I
    .local v9, sIx:I
    move v1, v0

    .end local v0           #i:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_a

    .line 479
    const/16 p0, 0x10

    .local p0, r:I
    move v0, v2

    .end local v2           #d:I
    .local v0, d:I
    move v2, p0

    .end local v4           #eIx:I
    .end local p0           #r:I
    .local v2, r:I
    :goto_8
    if-lt v0, v7, :cond_b

    move p0, v0

    .end local v0           #d:I
    .local p0, d:I
    move v0, v9

    .end local v1           #i:I
    .end local v2           #r:I
    .end local v5           #j:I
    .end local v9           #sIx:I
    .local v0, sIx:I
    :goto_9
    move-object p0, v3

    .line 483
    goto :goto_0

    .line 441
    .end local v7           #len:I
    .end local v8           #pad:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    .local p0, sArr:[B
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #sIx:I
    .local v1, sIx:I
    move v2, v1

    .end local v1           #sIx:I
    .restart local v2       #sIx:I
    goto :goto_1

    .line 445
    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    :cond_4
    add-int/lit8 v0, v4, -0x1

    .end local v4           #eIx:I
    .restart local v0       #eIx:I
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto :goto_2

    .line 448
    :cond_5
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 450
    .end local v3           #sLen:I
    .local v0, cCnt:I
    .restart local v8       #pad:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3       #sLen:I
    :cond_8
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 459
    .local v0, cc:I
    .local v2, d:I
    .local v3, dArr:[B
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v7       #len:I
    .restart local v10       #sepCnt:I
    :cond_9
    sget-object v9, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    aget-byte v6, p0, v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1           #sIx:I
    .restart local v6       #sIx:I
    aget-byte v1, p0, v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    aget-byte v6, p0, v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1           #sIx:I
    .restart local v9       #sIx:I
    aget-byte v1, p0, v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 462
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 463
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 464
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 467
    .end local v6           #i:I
    if-lez v10, :cond_d

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_d

    .line 468
    add-int/lit8 v2, v9, 0x2

    .line 469
    .end local v9           #sIx:I
    .local v2, sIx:I
    const/4 v0, 0x0

    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    goto :goto_6

    .line 477
    .end local v0           #cc:I
    .end local v6           #sIx:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    .local v5, j:I
    .restart local v9       #sIx:I
    :cond_a
    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    aget-byte v9, p0, v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 476
    .end local v1           #i:I
    .local v0, i:I
    add-int/lit8 v1, v5, 0x1

    .end local v5           #j:I
    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .restart local v5       #j:I
    move v9, v6

    .end local v6           #sIx:I
    .restart local v9       #sIx:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    goto :goto_7

    .line 480
    .end local v4           #eIx:I
    .end local p0           #sArr:[B
    .local v0, d:I
    .local v2, r:I
    :cond_b
    add-int/lit8 p0, v0, 0x1

    .end local v0           #d:I
    .local p0, d:I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 479
    add-int/lit8 v0, v2, -0x8

    .end local v2           #r:I
    .local v0, r:I
    move v2, v0

    .end local v0           #r:I
    .restart local v2       #r:I
    move v0, p0

    .end local p0           #d:I
    .local v0, d:I
    goto/16 :goto_8

    .end local v1           #i:I
    .end local v9           #sIx:I
    .local v0, cc:I
    .local v2, d:I
    .restart local v4       #eIx:I
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v10       #sepCnt:I
    .local p0, sArr:[B
    :cond_c
    move p0, v2

    .end local v2           #d:I
    .local p0, d:I
    move v0, v6

    .end local v6           #sIx:I
    .local v0, sIx:I
    goto/16 :goto_9

    .local v0, cc:I
    .local v1, d:I
    .restart local v9       #sIx:I
    .local p0, sArr:[B
    :cond_d
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v9

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    goto/16 :goto_6

    .end local v4           #eIx:I
    .end local v5           #eLen:I
    .end local v6           #sIx:I
    .end local v7           #len:I
    .end local v8           #pad:I
    .end local v10           #sepCnt:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    :cond_e
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto/16 :goto_2
.end method

.method public static final decodeFast([C)[B
    .locals 12
    .parameter "sArr"

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 236
    const/4 p0, 0x0

    .line 288
    .end local p0
    :goto_0
    return-object p0

    .line 238
    .restart local p0
    :cond_0
    array-length v3, p0

    .line 239
    .local v3, sLen:I
    if-nez v3, :cond_1

    .line 240
    sget-object p0, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, 0x0

    .local v1, sIx:I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .local v0, eIx:I
    move v2, v1

    .line 245
    .end local v1           #sIx:I
    .local v2, sIx:I
    :goto_1
    if-ge v2, v0, :cond_e

    sget-object v1, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-char v4, p0, v2

    aget v1, v1, v4

    if-ltz v1, :cond_3

    move v4, v0

    .line 249
    .end local v0           #eIx:I
    .local v4, eIx:I
    :goto_2
    if-lez v4, :cond_2

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    aget-char v1, p0, v4

    aget v0, v0, v1

    if-ltz v0, :cond_4

    .line 253
    :cond_2
    aget-char v0, p0, v4

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    sub-int v0, v4, v0

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    move v8, v0

    .line 254
    .local v8, pad:I
    :goto_3
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    .line 255
    .local v0, cCnt:I
    const/16 v1, 0x4c

    if-le v3, v1, :cond_8

    const/16 v1, 0x4c

    aget-char v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .end local v3           #sLen:I
    div-int/lit8 v1, v0, 0x4e

    :goto_4
    shl-int/lit8 v1, v1, 0x1

    move v10, v1

    .line 257
    .local v10, sepCnt:I
    :goto_5
    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v8

    .line 258
    .local v7, len:I
    new-array v3, v7, [B

    .line 261
    .end local v0           #cCnt:I
    .local v3, dArr:[B
    const/4 v1, 0x0

    .line 262
    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    div-int/lit8 v5, v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    .local v5, eLen:I
    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_6
    if-lt v2, v5, :cond_9

    .line 278
    if-ge v2, v7, :cond_c

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .local v5, j:I
    move v9, v6

    .end local v6           #sIx:I
    .local v9, sIx:I
    move v1, v0

    .end local v0           #i:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    :goto_7
    sub-int v0, v4, v8

    if-le v9, v0, :cond_a

    .line 284
    const/16 p0, 0x10

    .local p0, r:I
    move v0, v2

    .end local v2           #d:I
    .local v0, d:I
    move v2, p0

    .end local v4           #eIx:I
    .end local p0           #r:I
    .local v2, r:I
    :goto_8
    if-lt v0, v7, :cond_b

    move p0, v0

    .end local v0           #d:I
    .local p0, d:I
    move v0, v9

    .end local v1           #i:I
    .end local v2           #r:I
    .end local v5           #j:I
    .end local v9           #sIx:I
    .local v0, sIx:I
    :goto_9
    move-object p0, v3

    .line 288
    goto :goto_0

    .line 246
    .end local v7           #len:I
    .end local v8           #pad:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    .local p0, sArr:[C
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #sIx:I
    .local v1, sIx:I
    move v2, v1

    .end local v1           #sIx:I
    .restart local v2       #sIx:I
    goto :goto_1

    .line 250
    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    :cond_4
    add-int/lit8 v0, v4, -0x1

    .end local v4           #eIx:I
    .restart local v0       #eIx:I
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto :goto_2

    .line 253
    :cond_5
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 255
    .end local v3           #sLen:I
    .local v0, cCnt:I
    .restart local v8       #pad:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .restart local v3       #sLen:I
    :cond_8
    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    .line 264
    .local v0, cc:I
    .local v2, d:I
    .local v3, dArr:[B
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v7       #len:I
    .restart local v10       #sepCnt:I
    :cond_9
    sget-object v9, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    aget-char v6, p0, v6

    aget v6, v9, v6

    shl-int/lit8 v9, v6, 0x12

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v1, 0x1

    .end local v1           #sIx:I
    .restart local v6       #sIx:I
    aget-char v1, p0, v1

    aget v1, v11, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v9, v1

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v1, v6, 0x1

    .end local v6           #sIx:I
    .restart local v1       #sIx:I
    aget-char v6, p0, v6

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    sget-object v11, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v9, v1, 0x1

    .end local v1           #sIx:I
    .restart local v9       #sIx:I
    aget-char v1, p0, v1

    aget v1, v11, v1

    or-int/2addr v6, v1

    .line 267
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v2

    .line 268
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v1

    .line 269
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 272
    .end local v6           #i:I
    if-lez v10, :cond_d

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_d

    .line 273
    add-int/lit8 v2, v9, 0x2

    .line 274
    .end local v9           #sIx:I
    .local v2, sIx:I
    const/4 v0, 0x0

    move v6, v2

    .end local v2           #sIx:I
    .local v6, sIx:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    goto :goto_6

    .line 282
    .end local v0           #cc:I
    .end local v6           #sIx:I
    .end local v10           #sepCnt:I
    .local v1, i:I
    .local v5, j:I
    .restart local v9       #sIx:I
    :cond_a
    sget-object v0, Lcom/ecareme/utils/codec/Base64;->IA:[I

    add-int/lit8 v6, v9, 0x1

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    aget-char v9, p0, v9

    aget v0, v0, v9

    const/16 v9, 0x12

    mul-int/lit8 v10, v5, 0x6

    sub-int/2addr v9, v10

    shl-int/2addr v0, v9

    or-int/2addr v0, v1

    .line 281
    .end local v1           #i:I
    .local v0, i:I
    add-int/lit8 v1, v5, 0x1

    .end local v5           #j:I
    .local v1, j:I
    move v5, v1

    .end local v1           #j:I
    .restart local v5       #j:I
    move v9, v6

    .end local v6           #sIx:I
    .restart local v9       #sIx:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    goto :goto_7

    .line 285
    .end local v4           #eIx:I
    .end local p0           #sArr:[C
    .local v0, d:I
    .local v2, r:I
    :cond_b
    add-int/lit8 p0, v0, 0x1

    .end local v0           #d:I
    .local p0, d:I
    shr-int v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 284
    add-int/lit8 v0, v2, -0x8

    .end local v2           #r:I
    .local v0, r:I
    move v2, v0

    .end local v0           #r:I
    .restart local v2       #r:I
    move v0, p0

    .end local p0           #d:I
    .local v0, d:I
    goto/16 :goto_8

    .end local v1           #i:I
    .end local v9           #sIx:I
    .local v0, cc:I
    .local v2, d:I
    .restart local v4       #eIx:I
    .local v5, eLen:I
    .restart local v6       #sIx:I
    .restart local v10       #sepCnt:I
    .local p0, sArr:[C
    :cond_c
    move p0, v2

    .end local v2           #d:I
    .local p0, d:I
    move v0, v6

    .end local v6           #sIx:I
    .local v0, sIx:I
    goto/16 :goto_9

    .local v0, cc:I
    .local v1, d:I
    .restart local v9       #sIx:I
    .local p0, sArr:[C
    :cond_d
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v9

    .end local v9           #sIx:I
    .restart local v6       #sIx:I
    goto/16 :goto_6

    .end local v4           #eIx:I
    .end local v5           #eLen:I
    .end local v6           #sIx:I
    .end local v7           #len:I
    .end local v8           #pad:I
    .end local v10           #sepCnt:I
    .local v0, eIx:I
    .local v2, sIx:I
    .local v3, sLen:I
    :cond_e
    move v4, v0

    .end local v0           #eIx:I
    .restart local v4       #eIx:I
    goto/16 :goto_2
.end method

.method public static decodeFastToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "base64String"

    .prologue
    .line 674
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-object v1

    .line 676
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, p0

    .line 679
    goto :goto_0
.end method

.method public static decodeFastToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base64String"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 655
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 660
    :goto_0
    return-object v1

    .line 657
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, p0

    .line 660
    goto :goto_0
.end method

.method public static encodeToBase64String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToByte([B)[B
    .locals 2
    .parameter "sArr"

    .prologue
    .line 297
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToByte([BIZ)[B
    .locals 10
    .parameter "sArr"
    .parameter "len"
    .parameter "lineSep"

    .prologue
    .line 314
    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 316
    :cond_0
    sget-object p0, Lcom/ecareme/utils/codec/Base64;->EMPTY_BYTES:[B

    .line 359
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 318
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    array-length v0, p0

    if-le p1, v0, :cond_2

    .line 320
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "len:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, " > array.length:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    .end local p0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 323
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v5, v0, 0x3

    .line 324
    .local v5, eLen:I
    const/4 v0, 0x1

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 325
    .local v0, cCnt:I
    if-eqz p2, :cond_4

    const/4 v1, 0x1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x4c

    shl-int/lit8 v1, v1, 0x1

    :goto_1
    add-int v4, v0, v1

    .line 326
    .local v4, dLen:I
    new-array v3, v4, [B

    .line 329
    .local v3, dArr:[B
    const/4 v2, 0x0

    .local v2, s:I
    const/4 v1, 0x0

    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    move v6, v2

    .end local v2           #s:I
    .local v6, s:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_2
    if-lt v6, v5, :cond_5

    .line 348
    sub-int p2, p1, v5

    .line 349
    .local p2, left:I
    if-lez p2, :cond_3

    .line 351
    aget-byte v0, p0, v5

    .end local v0           #cc:I
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p0, p0, p1

    .end local p0
    .end local p1
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    :goto_3
    or-int/2addr p0, v0

    .line 354
    .local p0, i:I
    const/4 p1, 0x4

    sub-int p1, v4, p1

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->CA:[C

    shr-int/lit8 v1, p0, 0xc

    aget-char v0, v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 355
    const/4 p1, 0x3

    sub-int p1, v4, p1

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 356
    const/4 p1, 0x2

    sub-int p1, v4, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    sget-object p2, Lcom/ecareme/utils/codec/Base64;->CA:[C

    .end local p2           #left:I
    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p2, p0

    .end local p0           #i:I
    int-to-byte p0, p0

    :goto_4
    aput-byte p0, v3, p1

    .line 357
    const/4 p0, 0x1

    sub-int p0, v4, p0

    const/16 p1, 0x3d

    aput-byte p1, v3, p0

    :cond_3
    move-object p0, v3

    .line 359
    goto/16 :goto_0

    .line 325
    .end local v2           #d:I
    .end local v3           #dArr:[B
    .end local v4           #dLen:I
    .end local v6           #s:I
    .local v0, cCnt:I
    .local p0, sArr:[B
    .restart local p1
    .local p2, lineSep:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 331
    .local v0, cc:I
    .restart local v2       #d:I
    .restart local v3       #dArr:[B
    .restart local v4       #dLen:I
    .restart local v6       #s:I
    :cond_5
    add-int/lit8 v1, v6, 0x1

    .end local v6           #s:I
    .local v1, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v6, v1, 0x1

    .end local v1           #s:I
    .restart local v6       #s:I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6           #s:I
    .local v7, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v1

    .line 334
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 335
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v1

    .line 336
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 337
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v8, v6

    .end local v6           #i:I
    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 340
    if-eqz p2, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    const/4 v1, 0x2

    sub-int v1, v4, v1

    if-ge v2, v1, :cond_8

    .line 341
    add-int/lit8 v0, v2, 0x1

    .end local v2           #d:I
    .local v0, d:I
    const/16 v1, 0xd

    aput-byte v1, v3, v2

    .line 342
    add-int/lit8 v1, v0, 0x1

    .end local v0           #d:I
    .restart local v1       #d:I
    const/16 v2, 0xa

    aput-byte v2, v3, v0

    .line 343
    const/4 v0, 0x0

    .local v0, cc:I
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v7

    .end local v7           #s:I
    .local v6, s:I
    goto/16 :goto_2

    .line 351
    .end local v0           #cc:I
    .local p2, left:I
    :cond_6
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 356
    .end local p1
    .local p0, i:I
    :cond_7
    const/16 p0, 0x3d

    goto :goto_4

    .end local v6           #s:I
    .restart local v0       #cc:I
    .restart local v7       #s:I
    .local p0, sArr:[B
    .restart local p1
    .local p2, lineSep:Z
    :cond_8
    move v6, v7

    .end local v7           #s:I
    .restart local v6       #s:I
    goto/16 :goto_2
.end method

.method public static final encodeToByte([BZ)[B
    .locals 1
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 302
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToChar([B)[C
    .locals 2
    .parameter "sArr"

    .prologue
    .line 97
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToChar([BIZ)[C
    .locals 10
    .parameter "sArr"
    .parameter "len"
    .parameter "lineSep"

    .prologue
    .line 114
    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 116
    :cond_0
    sget-object p0, Lcom/ecareme/utils/codec/Base64;->EMPTY_CHARS:[C

    .line 159
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 118
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    array-length v0, p0

    if-le p1, v0, :cond_2

    .line 120
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "len:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, " > array.length:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    .end local p0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 123
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v5, v0, 0x3

    .line 124
    .local v5, eLen:I
    const/4 v0, 0x1

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 125
    .local v0, cCnt:I
    if-eqz p2, :cond_4

    const/4 v1, 0x1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x4c

    shl-int/lit8 v1, v1, 0x1

    :goto_1
    add-int v4, v0, v1

    .line 126
    .local v4, dLen:I
    new-array v3, v4, [C

    .line 129
    .local v3, dArr:[C
    const/4 v2, 0x0

    .local v2, s:I
    const/4 v1, 0x0

    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    move v6, v2

    .end local v2           #s:I
    .local v6, s:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_2
    if-lt v6, v5, :cond_5

    .line 148
    sub-int p2, p1, v5

    .line 149
    .local p2, left:I
    if-lez p2, :cond_3

    .line 151
    aget-byte v0, p0, v5

    .end local v0           #cc:I
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p0, p0, p1

    .end local p0
    .end local p1
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    :goto_3
    or-int/2addr p0, v0

    .line 154
    .local p0, i:I
    const/4 p1, 0x4

    sub-int p1, v4, p1

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->CA:[C

    shr-int/lit8 v1, p0, 0xc

    aget-char v0, v0, v1

    aput-char v0, v3, p1

    .line 155
    const/4 p1, 0x3

    sub-int p1, v4, p1

    sget-object v0, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    aput-char v0, v3, p1

    .line 156
    const/4 p1, 0x2

    sub-int p1, v4, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    sget-object p2, Lcom/ecareme/utils/codec/Base64;->CA:[C

    .end local p2           #left:I
    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p2, p0

    .end local p0           #i:I
    :goto_4
    aput-char p0, v3, p1

    .line 157
    const/4 p0, 0x1

    sub-int p0, v4, p0

    const/16 p1, 0x3d

    aput-char p1, v3, p0

    :cond_3
    move-object p0, v3

    .line 159
    goto/16 :goto_0

    .line 125
    .end local v2           #d:I
    .end local v3           #dArr:[C
    .end local v4           #dLen:I
    .end local v6           #s:I
    .local v0, cCnt:I
    .local p0, sArr:[B
    .restart local p1
    .local p2, lineSep:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 131
    .local v0, cc:I
    .restart local v2       #d:I
    .restart local v3       #dArr:[C
    .restart local v4       #dLen:I
    .restart local v6       #s:I
    :cond_5
    add-int/lit8 v1, v6, 0x1

    .end local v6           #s:I
    .local v1, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v6, v1, 0x1

    .end local v1           #s:I
    .restart local v6       #s:I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6           #s:I
    .local v7, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v1

    .line 134
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v3, v2

    .line 135
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v3, v1

    .line 136
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v3, v2

    .line 137
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v8, Lcom/ecareme/utils/codec/Base64;->CA:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v8, v6

    .end local v6           #i:I
    aput-char v6, v3, v1

    .line 140
    if-eqz p2, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    const/4 v1, 0x2

    sub-int v1, v4, v1

    if-ge v2, v1, :cond_8

    .line 141
    add-int/lit8 v0, v2, 0x1

    .end local v2           #d:I
    .local v0, d:I
    const/16 v1, 0xd

    aput-char v1, v3, v2

    .line 142
    add-int/lit8 v1, v0, 0x1

    .end local v0           #d:I
    .restart local v1       #d:I
    const/16 v2, 0xa

    aput-char v2, v3, v0

    .line 143
    const/4 v0, 0x0

    .local v0, cc:I
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v7

    .end local v7           #s:I
    .local v6, s:I
    goto/16 :goto_2

    .line 151
    .end local v0           #cc:I
    .local p2, left:I
    :cond_6
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 156
    .end local p1
    .local p0, i:I
    :cond_7
    const/16 p0, 0x3d

    goto :goto_4

    .end local v6           #s:I
    .restart local v0       #cc:I
    .restart local v7       #s:I
    .local p0, sArr:[B
    .restart local p1
    .local p2, lineSep:Z
    :cond_8
    move v6, v7

    .end local v7           #s:I
    .restart local v6       #s:I
    goto/16 :goto_2
.end method

.method public static final encodeToChar([BZ)[C
    .locals 1
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 102
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToString([B)Ljava/lang/String;
    .locals 2
    .parameter "sArr"

    .prologue
    .line 492
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToString([BIZ)Ljava/lang/String;
    .locals 2
    .parameter "sArr"
    .parameter "len"
    .parameter "lineSep"

    .prologue
    .line 510
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 1
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 497
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
