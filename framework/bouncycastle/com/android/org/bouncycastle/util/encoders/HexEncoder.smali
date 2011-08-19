.class public Lcom/android/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 18
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 37
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 38
    return-void

    .line 9
    :array_16
    .array-data 0x1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private ignore(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 66
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


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 11
    .parameter "data"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v5, 0x0

    .line 136
    .local v5, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 138
    .local v2, end:I
    :goto_5
    if-lez v2, :cond_14

    .line 140
    const/4 v6, 0x1

    sub-int v6, v2, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_28

    .line 148
    :cond_14
    const/4 v3, 0x0

    .line 149
    .local v3, i:I
    :goto_15
    if-ge v3, v2, :cond_59

    move v4, v3

    .line 151
    .end local v3           #i:I
    .local v4, i:I
    :goto_18
    if-ge v4, v2, :cond_2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 153
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_18

    .line 145
    .end local v4           #i:I
    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 156
    .restart local v4       #i:I
    :cond_2b
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v0, v6, v7

    .local v0, b1:B
    move v4, v3

    .line 158
    .end local v3           #i:I
    .restart local v4       #i:I
    :goto_36
    if-ge v4, v2, :cond_46

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 160
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_36

    .line 163
    :cond_46
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v1, v6, v7

    .line 165
    .local v1, b2:B
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v1

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 170
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_59
    return v5
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 13
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
    .line 83
    const/4 v5, 0x0

    .line 85
    .local v5, outLen:I
    add-int v2, p2, p3

    .line 87
    .local v2, end:I
    :goto_3
    if-le v2, p2, :cond_11

    .line 89
    const/4 v6, 0x1

    sub-int v6, v2, v6

    aget-byte v6, p1, v6

    int-to-char v6, v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_24

    .line 97
    :cond_11
    move v3, p2

    .line 98
    .local v3, i:I
    :goto_12
    if-ge v3, v2, :cond_50

    move v4, v3

    .line 100
    .end local v3           #i:I
    .local v4, i:I
    :goto_15
    if-ge v4, v2, :cond_27

    aget-byte v6, p1, v4

    int-to-char v6, v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 102
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_15

    .line 94
    .end local v4           #i:I
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 105
    .restart local v4       #i:I
    :cond_27
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-byte v7, p1, v4

    aget-byte v0, v6, v7

    .local v0, b1:B
    move v4, v3

    .line 107
    .end local v3           #i:I
    .restart local v4       #i:I
    :goto_30
    if-ge v4, v2, :cond_3f

    aget-byte v6, p1, v4

    int-to-char v6, v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 109
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_30

    .line 112
    :cond_3f
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-byte v7, p1, v4

    aget-byte v1, v6, v7

    .line 114
    .local v1, b2:B
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v1

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 119
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_50
    return v5
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 9
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
    .line 52
    move v0, p2

    .local v0, i:I
    :goto_1
    add-int v2, p2, p3

    if-ge v0, v2, :cond_1e

    .line 54
    aget-byte v2, p1, v0

    and-int/lit16 v1, v2, 0xff

    .line 56
    .local v1, v:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v3, v1, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v1           #v:I
    :cond_1e
    mul-int/lit8 v2, p3, 0x2

    return v2
.end method

.method protected initialiseDecodingTable()V
    .registers 6

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 24
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x41

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x61

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 28
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x62

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 29
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x43

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x63

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 30
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x44

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x64

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 31
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x45

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 32
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x46

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x66

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 33
    return-void
.end method
