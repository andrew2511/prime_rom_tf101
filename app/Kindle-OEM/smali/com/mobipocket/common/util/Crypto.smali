.class public Lcom/mobipocket/common/util/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static final HEXA_CHARS:[C

.field private static final URLPRIVATE_KEY:[B

.field private static VOUCHERENCODE_PRIVATE_KEY:[B


# instance fields
.field private final cipher:Lcom/mobipocket/common/util/Cipher;

.field private final custom_key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 23
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/util/Crypto;->HEXA_CHARS:[C

    .line 30
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobipocket/common/util/Crypto;->URLPRIVATE_KEY:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mobipocket/common/util/Crypto;->VOUCHERENCODE_PRIVATE_KEY:[B

    return-void

    .line 23
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x1
        0x4at
        0x2ft
        0x1t
        0x1ft
        0x66t
        0x3at
        0x2ft
        0x4t
        0x2ft
        0xet
        0x4et
        0xadt
        0xe5t
        0xc0t
        0x50t
        0x4ft
    .end array-data

    .line 39
    :array_2
    .array-data 0x1
        0x8bt
        0x4et
        0x7t
        0x1at
        0x52t
        0x4ct
        0x3et
        0x16t
        0x4ct
        0x3bt
        0x6ct
        0xbet
        0xf4t
        0xd4t
        0x32t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    .line 54
    new-instance v0, Lcom/mobipocket/common/util/Cipher;

    invoke-direct {v0}, Lcom/mobipocket/common/util/Cipher;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    return-void

    .line 48
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static hexDecode(Ljava/lang/String;)[B
    .locals 11
    .parameter "hexa"

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x41

    const/16 v8, 0x30

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 82
    .local v4, length:I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 84
    const/4 v6, 0x0

    .line 119
    :goto_0
    return-object v6

    .line 87
    :cond_0
    shr-int/lit8 v6, v4, 0x1

    new-array v5, v6, [B

    .line 89
    .local v5, result:[B
    const/4 v3, 0x0

    .line 90
    .local v3, j:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, c:C
    const/4 v0, 0x0

    .line 95
    .local v0, b:I
    if-lt v1, v8, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    .line 97
    sub-int v0, v1, v8

    .line 108
    :cond_1
    :goto_2
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_4

    .line 110
    shl-int/lit8 v6, v0, 0x4

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 90
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_2
    if-lt v1, v10, :cond_3

    const/16 v6, 0x66

    if-gt v1, v6, :cond_3

    .line 101
    sub-int v6, v1, v10

    add-int/lit8 v0, v6, 0xa

    goto :goto_2

    .line 103
    :cond_3
    if-lt v1, v9, :cond_1

    const/16 v6, 0x46

    if-gt v1, v6, :cond_1

    .line 105
    sub-int v6, v1, v9

    add-int/lit8 v0, v6, 0xa

    goto :goto_2

    .line 114
    :cond_4
    aget-byte v6, v5, v3

    int-to-byte v7, v0

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #b:I
    .end local v1           #c:C
    :cond_5
    move-object v6, v5

    .line 119
    goto :goto_0
.end method

.method public static hexEncode([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    .line 61
    array-length v5, p0

    shl-int/lit8 v5, v5, 0x1

    new-array v4, v5, [C

    .line 63
    .local v4, result:[C
    const/4 v2, 0x0

    .line 64
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 66
    aget-byte v0, p0, v1

    .line 67
    .local v0, b:B
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    sget-object v5, Lcom/mobipocket/common/util/Crypto;->HEXA_CHARS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 68
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    sget-object v5, Lcom/mobipocket/common/util/Crypto;->HEXA_CHARS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v3

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0           #b:B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 159
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v2, Lcom/mobipocket/common/util/Crypto;->URLPRIVATE_KEY:[B

    invoke-static {p1}, Lcom/mobipocket/common/util/Crypto;->hexDecode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 162
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    iget-object v2, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    invoke-static {p1}, Lcom/mobipocket/common/util/Crypto;->hexDecode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public decodeBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 173
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v1, Lcom/mobipocket/common/util/Crypto;->URLPRIVATE_KEY:[B

    invoke-static {p1}, Lcom/mobipocket/common/util/Crypto;->hexDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    iget-object v1, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    invoke-static {p1}, Lcom/mobipocket/common/util/Crypto;->hexDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v1, Lcom/mobipocket/common/util/Crypto;->URLPRIVATE_KEY:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Crypto;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    iget-object v1, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Crypto;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeBytes([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v1, Lcom/mobipocket/common/util/Crypto;->URLPRIVATE_KEY:[B

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Crypto;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    iget-object v1, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Crypto;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setKey([B)V
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->custom_key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-void
.end method

.method public voucherDecode(Ljava/lang/String;)[B
    .locals 4
    .parameter "data"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v1, Lcom/mobipocket/common/util/Crypto;->VOUCHERENCODE_PRIVATE_KEY:[B

    invoke-static {p1}, Lcom/mobipocket/common/util/Crypto;->hexDecode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public voucherEncode([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobipocket/common/util/Crypto;->cipher:Lcom/mobipocket/common/util/Cipher;

    sget-object v1, Lcom/mobipocket/common/util/Crypto;->VOUCHERENCODE_PRIVATE_KEY:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Crypto;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
