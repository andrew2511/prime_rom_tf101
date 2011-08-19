.class public Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;
.super Ljava/lang/Object;
.source "ByteArrayDataInput.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private mBytes:[B

.field private mLength:I

.field private mPos:I

.field private mUtfCharBuf:[C


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    .line 58
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    array-length v0, v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    .line 60
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    .line 61
    return-void
.end method

.method public static convertUTF8WithBuf([B[CII)Ljava/lang/String;
    .registers 15
    .parameter "buf"
    .parameter "out"
    .parameter "offset"
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x80

    .line 234
    const/4 v3, 0x0

    .local v3, count:I
    const/4 v5, 0x0

    .local v5, s:I
    move v6, v5

    .end local v5           #s:I
    .local v6, s:I
    move v4, v3

    .line 235
    .end local v3           #count:I
    .local v4, count:I
    :goto_7
    if-ge v4, p3, :cond_11e

    .line 236
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    add-int v7, p2, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    aput-char v7, p1, v6

    if-ge v7, v9, :cond_19

    .line 237
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_7

    .line 238
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_19
    aget-char v0, p1, v6

    .local v0, a:I
    and-int/lit16 v7, v0, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_81

    .line 239
    if-lt v3, p3, :cond_48

    .line 240
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF8 Specification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 244
    :cond_48
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 246
    .local v1, b:I
    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v9, :cond_73

    .line 247
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match UTF8 Specification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 250
    :cond_73
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .line 251
    .end local v5           #s:I
    .restart local v6       #s:I
    goto :goto_7

    .end local v1           #b:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_81
    and-int/lit16 v7, v0, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_f7

    .line 252
    add-int/lit8 v7, v3, 0x1

    if-lt v7, p3, :cond_ac

    .line 253
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match UTF8 Specification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :cond_ac
    add-int/lit8 v4, v3, 0x1

    .end local v3           #count:I
    .restart local v4       #count:I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 258
    .restart local v1       #b:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    add-int v7, p2, v4

    aget-byte v2, p0, v7

    .line 260
    .local v2, c:I
    and-int/lit16 v7, v1, 0xc0

    if-ne v7, v9, :cond_c0

    and-int/lit16 v7, v2, 0xc0

    if-eq v7, v9, :cond_e2

    .line 261
    :cond_c0
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Second or third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    sub-int v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match UTF8 Specification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    :cond_e2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #s:I
    .restart local v5       #s:I
    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v1, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .end local v5           #s:I
    .restart local v6       #s:I
    move v4, v3

    .line 266
    .end local v3           #count:I
    .restart local v4       #count:I
    goto/16 :goto_7

    .line 267
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v4           #count:I
    .restart local v3       #count:I
    :cond_f7
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v3, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match UTF8 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Specification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 272
    .end local v0           #a:I
    .end local v3           #count:I
    .restart local v4       #count:I
    :cond_11e
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method


# virtual methods
.method public readBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_10

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    .line 70
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return v1

    .line 78
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readChar()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v3, v4

    .line 86
    .local v0, a:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v3, v3, v4
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_1b

    and-int/lit16 v1, v3, 0xff

    .line 87
    .local v1, b:I
    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    int-to-char v3, v3

    return v3

    .line 88
    .end local v0           #a:I
    .end local v1           #b:I
    :catch_1b
    move-exception v3

    move-object v2, v3

    .line 89
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readFully([BII)V

    .line 103
    return-void
.end method

.method public readFully([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p3, :cond_3

    .line 119
    :goto_2
    return-void

    .line 110
    :cond_3
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_e

    .line 111
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_e
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1f

    .line 114
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    .line 115
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 117
    :cond_1f
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    goto :goto_2
.end method

.method public readInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v0, v5, 0xff

    .line 124
    .local v0, a:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v1, v5, 0xff

    .line 125
    .local v1, b:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 126
    .local v2, c:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v5, v5, v6
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_3a

    and-int/lit16 v3, v5, 0xff

    .line 127
    .local v3, d:I
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v3

    return v5

    .line 128
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v3           #d:I
    :catch_3a
    move-exception v5

    move-object v4, v5

    .line 129
    .local v4, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5
.end method

.method public readLine()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 137
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    if-lt v2, v3, :cond_a

    .line 138
    const/4 v2, 0x0

    .line 154
    :goto_9
    return-object v2

    .line 141
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v1, result:Ljava/lang/StringBuffer;
    :cond_f
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v2, v2, v3

    int-to-char v0, v2

    .line 144
    .local v0, c:C
    if-ne v0, v5, :cond_21

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 146
    :cond_21
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3e

    .line 147
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    if-ge v2, v3, :cond_39

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_39

    .line 148
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    .line 150
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 152
    :cond_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    if-ne v2, v3, :cond_f

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public readLong()J
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v2, v0

    .line 163
    .local v2, a:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v4, v0

    .line 164
    .local v4, b:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v6, v0

    .line 165
    .local v6, c:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v8, v0

    .line 166
    .local v8, d:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v10, v0

    .line 167
    .local v10, e:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v12, v0

    .line 168
    .local v12, f:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v14, v0

    .line 169
    .local v14, g:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v18, v18, v19
    :try_end_f6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f6} :catch_12c

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 170
    .local v16, h:J
    const/16 v18, 0x38

    shl-long v18, v2, v18

    const/16 v20, 0x30

    shl-long v20, v4, v20

    or-long v18, v18, v20

    const/16 v20, 0x28

    shl-long v20, v6, v20

    or-long v18, v18, v20

    const/16 v20, 0x20

    shl-long v20, v8, v20

    or-long v18, v18, v20

    const/16 v20, 0x18

    shl-long v20, v10, v20

    or-long v18, v18, v20

    const/16 v20, 0x10

    shl-long v20, v12, v20

    or-long v18, v18, v20

    const/16 v20, 0x8

    shl-long v20, v14, v20

    or-long v18, v18, v20

    or-long v18, v18, v16

    return-wide v18

    .line 172
    .end local v2           #a:J
    .end local v4           #b:J
    .end local v6           #c:J
    .end local v8           #d:J
    .end local v10           #e:J
    .end local v12           #f:J
    .end local v14           #g:J
    .end local v16           #h:J
    :catch_12c
    move-exception v18

    move-object/from16 v10, v18

    .line 173
    .local v10, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v18, Ljava/io/EOFException;

    invoke-direct/range {v18 .. v18}, Ljava/io/EOFException;-><init>()V

    throw v18
.end method

.method public readShort()S
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v3, v4

    .line 180
    .local v0, a:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v3, v3, v4
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_1b

    and-int/lit16 v1, v3, 0xff

    .line 181
    .local v1, b:I
    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    int-to-short v3, v3

    return v3

    .line 182
    .end local v0           #a:I
    .end local v1           #b:I
    :catch_1b
    move-exception v3

    move-object v2, v3

    .line 183
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
.end method

.method public readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readUnsignedShort()I

    move-result v0

    .line 189
    .local v0, length:I
    if-nez v0, :cond_9

    .line 190
    const-string v2, ""

    .line 201
    :goto_8
    return-object v2

    .line 192
    :cond_9
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1a

    .line 193
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    .line 194
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 196
    :cond_1a
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    array-length v2, v2

    if-le v0, v2, :cond_23

    .line 197
    new-array v2, v0, [C

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    .line 199
    :cond_23
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    invoke-static {v2, v3, v4, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, result:Ljava/lang/String;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    move-object v2, v1

    .line 201
    goto :goto_8
.end method

.method public readUnsignedByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_d

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 207
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 208
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readUnsignedShort()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 215
    .local v0, a:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v3, v3, v4
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_16} :catch_1c

    and-int/lit16 v1, v3, 0xff

    .line 216
    .local v1, b:I
    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    return v3

    .line 217
    .end local v0           #a:I
    .end local v1           #b:I
    :catch_1c
    move-exception v3

    move-object v2, v3

    .line 218
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
.end method

.method public skipBytes(I)I
    .registers 4
    .parameter "length"

    .prologue
    .line 223
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_d

    .line 224
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int p1, v0, v1

    .line 226
    :cond_d
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    .line 227
    return p1
.end method
