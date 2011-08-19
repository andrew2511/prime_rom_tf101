.class Lcom/ecareme/utils/crypto/XAES;
.super Ljava/lang/Object;
.source "XAES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/utils/crypto/XAES$BlockSize;,
        Lcom/ecareme/utils/crypto/XAES$KeySize;
    }
.end annotation


# static fields
.field private static m_InCo:[B = null

.field private static final m_InCo_int:I = 0xe090d0b

.field private static m_byt2Power:[B

.field private static m_bytOnBits:[B

.field private static m_fbsub:[B

.field private static m_ftable:[I

.field private static m_l2Power:[I

.field private static m_lOnBits:[I

.field private static m_ltab:[B

.field private static m_ptab:[B

.field private static m_rbsub:[B

.field private static m_rco:[I

.field private static m_rtable:[I


# instance fields
.field private final m_Nb:I

.field private final m_Nk:I

.field private final m_Nr:I

.field private m_fi:[B

.field private m_fkey:[I

.field private m_ri:[B

.field private m_rkey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1f

    const/16 v3, 0x8

    const/16 v2, 0x100

    const/4 v4, 0x1

    .line 10
    const/4 v1, 0x4

    new-array v1, v1, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    .line 11
    new-array v1, v5, [I

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    .line 12
    new-array v1, v5, [I

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_l2Power:[I

    .line 13
    new-array v1, v3, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_bytOnBits:[B

    .line 14
    new-array v1, v3, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_byt2Power:[B

    .line 16
    new-array v1, v2, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    .line 17
    new-array v1, v2, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    .line 18
    new-array v1, v2, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    .line 19
    new-array v1, v2, [B

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    .line 20
    new-array v1, v2, [I

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    .line 21
    new-array v1, v2, [I

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    .line 22
    const/16 v1, 0x1e

    new-array v1, v1, [I

    sput-object v1, Lcom/ecareme/utils/crypto/XAES;->m_rco:[I

    .line 35
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    .line 36
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    const/16 v2, 0xd

    aput-byte v2, v1, v4

    .line 37
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    const/4 v2, 0x2

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    .line 38
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    const/4 v2, 0x3

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    .line 40
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_bytOnBits:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_byt2Power:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 55
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_l2Power:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 59
    invoke-static {}, Lcom/ecareme/utils/crypto/XAES;->gentables()V

    .line 7
    return-void

    .line 42
    .local v0, i:B
    :cond_0
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_bytOnBits:[B

    add-int/lit8 v2, v0, 0x1

    shl-int v2, v4, v2

    sub-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 40
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_byt2Power:[B

    shl-int v2, v4, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_1

    .line 52
    .local v0, i:I
    :cond_2
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    add-int/lit8 v2, v0, 0x1

    shl-int v2, v4, v2

    sub-int/2addr v2, v4

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    :cond_3
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_l2Power:[I

    shl-int v2, v4, v0

    aput v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method constructor <init>([BLcom/ecareme/utils/crypto/XAES$BlockSize;Lcom/ecareme/utils/crypto/XAES$KeySize;)V
    .locals 6
    .parameter "key"
    .parameter "blocksize"
    .parameter "keysize"

    .prologue
    const/16 v5, 0x78

    const/16 v4, 0x20

    const/16 v2, 0x18

    const/4 v3, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    .line 29
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    .line 30
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    .line 31
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    .line 541
    invoke-static {p2}, Lcom/ecareme/utils/crypto/XAES$BlockSize;->access$2(Lcom/ecareme/utils/crypto/XAES$BlockSize;)I

    move-result v1

    iput v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    .line 542
    invoke-static {p3}, Lcom/ecareme/utils/crypto/XAES$KeySize;->access$2(Lcom/ecareme/utils/crypto/XAES$KeySize;)I

    move-result v1

    iput v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    .line 543
    iget v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    iget v2, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    if-lt v1, v2, :cond_0

    .line 545
    iget v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nr:I

    .line 553
    :goto_0
    new-array v0, v4, [B

    .line 555
    .local v0, byteKey:[B
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 556
    array-length v1, p1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    invoke-direct {p0, v0}, Lcom/ecareme/utils/crypto/XAES;->gkey([B)V

    .line 558
    return-void

    .line 549
    .end local v0           #byteKey:[B
    :cond_0
    iget v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nr:I

    goto :goto_0
.end method

.method private static ByteSub(B)B
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x1

    .line 234
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    const/16 v2, 0xff

    sget-object v3, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    invoke-static {p0}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v4

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v3

    sub-int/2addr v2, v3

    aget-byte v0, v1, v2

    .line 235
    .local v0, y:B
    move p0, v0

    .line 236
    invoke-static {p0, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeftByte(BI)B

    move-result p0

    .line 237
    xor-int v1, v0, p0

    int-to-byte v0, v1

    .line 238
    invoke-static {p0, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeftByte(BI)B

    move-result p0

    .line 239
    xor-int v1, v0, p0

    int-to-byte v0, v1

    .line 240
    invoke-static {p0, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeftByte(BI)B

    move-result p0

    .line 241
    xor-int v1, v0, p0

    int-to-byte v0, v1

    .line 242
    invoke-static {p0, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeftByte(BI)B

    move-result p0

    .line 243
    xor-int v1, v0, p0

    int-to-byte v0, v1

    .line 244
    xor-int/lit8 v1, v0, 0x63

    int-to-byte v0, v1

    .line 246
    return v0
.end method

.method private static InvMixCol(I)I
    .locals 6
    .parameter "x"

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, m:I
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 216
    .local v0, b:[B
    const v1, 0xe090d0b

    .line 218
    const/4 v2, 0x3

    invoke-static {v1, p0}, Lcom/ecareme/utils/crypto/XAES;->product(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 219
    invoke-static {v1, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v1

    .line 220
    const/4 v2, 0x2

    invoke-static {v1, p0}, Lcom/ecareme/utils/crypto/XAES;->product(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 221
    invoke-static {v1, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v1

    .line 222
    const/4 v2, 0x1

    invoke-static {v1, p0}, Lcom/ecareme/utils/crypto/XAES;->product(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 223
    invoke-static {v1, v5}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v1

    .line 224
    invoke-static {v1, p0}, Lcom/ecareme/utils/crypto/XAES;->product(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 226
    invoke-static {v0, v4, v4}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v2

    return v2
.end method

.method private static RShiftByte(BI)B
    .locals 4
    .parameter "bytValue"
    .parameter "bytShiftBits"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    move v0, p0

    .line 129
    :goto_0
    return v0

    .line 112
    :cond_0
    if-ne p1, v3, :cond_2

    .line 114
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1

    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_2
    if-gez p1, :cond_4

    move v0, v2

    :goto_1
    if-le p1, v3, :cond_3

    move v1, v2

    :cond_3
    or-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Byte shift bits must 0 < bit < 7, given:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 123
    goto :goto_1

    .line 129
    :cond_5
    sget-object v0, Lcom/ecareme/utils/crypto/XAES;->m_byt2Power:[B

    aget-byte v0, v0, p1

    div-int v0, p0, v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private static RotateLeft(II)I
    .locals 2
    .parameter "lValue"
    .parameter "iShiftBits"

    .prologue
    .line 138
    shl-int v0, p0, p1

    const/16 v1, 0x20

    sub-int/2addr v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static RotateLeftByte(BI)B
    .locals 2
    .parameter "bytValue"
    .parameter "bytShiftBits"

    .prologue
    .line 146
    shl-int v0, p0, p1

    const/16 v1, 0x8

    sub-int/2addr v1, p1

    invoke-static {p0, v1}, Lcom/ecareme/utils/crypto/XAES;->RShiftByte(BI)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static SubByte(I)I
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 185
    .local v0, b:[B
    invoke-static {p0, v0, v3, v3}, Lcom/ecareme/utils/ByteUtils;->getBytes(I[BIZ)V

    .line 187
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget-byte v2, v0, v3

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v3

    .line 188
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget-byte v2, v0, v4

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v4

    .line 189
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget-byte v2, v0, v5

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v5

    .line 190
    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget-byte v2, v0, v6

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v6

    .line 192
    invoke-static {v0, v3, v3}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v1

    return v1
.end method

.method private static bmul(BB)B
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    sget-object v1, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    invoke-static {p0}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v1

    sget-object v2, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    invoke-static {p1}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v3

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    .line 175
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 175
    goto :goto_2
.end method

.method private decryptBuffer([B)V
    .locals 13
    .parameter "buff"

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, i:I
    const/4 v2, 0x0

    .line 487
    .local v2, j:I
    const/4 v3, 0x0

    .line 488
    .local v3, k:I
    const/4 v4, 0x0

    .line 489
    .local v4, m:I
    const/16 v8, 0x8

    new-array v0, v8, [I

    .line 490
    .local v0, a:[I
    const/16 v8, 0x8

    new-array v6, v8, [I

    .line 491
    .local v6, x:[I
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 492
    .local v7, y:[I
    const/16 v8, 0x8

    new-array v5, v8, [I

    .line 494
    .local v5, t:[I
    const/4 v1, 0x0

    :goto_0
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v1, v8, :cond_0

    .line 500
    iget v3, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    .line 501
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    const/4 v1, 0x1

    :goto_1
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nr:I

    if-lt v1, v8, :cond_1

    .line 518
    const/4 v2, 0x0

    :goto_2
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v2, v8, :cond_3

    .line 529
    const/4 v1, 0x0

    :goto_3
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v1, v8, :cond_4

    .line 537
    return-void

    .line 496
    :cond_0
    mul-int/lit8 v2, v1, 0x4

    .line 497
    const/4 v8, 0x0

    invoke-static {p1, v2, v8}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v8

    aput v8, v0, v1

    .line 498
    aget v8, v0, v1

    iget-object v9, p0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    aget v9, v9, v1

    xor-int/2addr v8, v9

    aput v8, v0, v1

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v2, 0x0

    :goto_4
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v2, v8, :cond_2

    .line 514
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    :cond_2
    mul-int/lit8 v4, v2, 0x3

    .line 507
    iget-object v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    aget v8, v8, v3

    .line 508
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    aget v10, v6, v2

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    xor-int/2addr v8, v9

    .line 509
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    aget-byte v10, v10, v4

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x8

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 510
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x10

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 511
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    add-int/lit8 v11, v4, 0x2

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x18

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 507
    aput v8, v7, v2

    .line 512
    add-int/lit8 v3, v3, 0x1

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 520
    :cond_3
    mul-int/lit8 v4, v2, 0x3

    .line 522
    iget-object v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    aget v8, v8, v3

    .line 523
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    aget v10, v6, v2

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    xor-int/2addr v8, v9

    .line 524
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    aget-byte v10, v10, v4

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x8

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 525
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x10

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 526
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    add-int/lit8 v11, v4, 0x2

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x18

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x18

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 522
    aput v8, v7, v2

    .line 527
    add-int/lit8 v3, v3, 0x1

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 531
    :cond_4
    mul-int/lit8 v2, v1, 0x4

    .line 533
    aget v8, v7, v1

    const/4 v9, 0x0

    invoke-static {v8, p1, v2, v9}, Lcom/ecareme/utils/ByteUtils;->getBytes(I[BIZ)V

    .line 534
    const/4 v8, 0x0

    aput v8, v6, v1

    .line 535
    const/4 v8, 0x0

    aput v8, v7, v1

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method private encryptbuffer([B)V
    .locals 13
    .parameter "buff"

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, i:I
    const/4 v2, 0x0

    .line 427
    .local v2, j:I
    const/4 v3, 0x0

    .line 428
    .local v3, k:I
    const/4 v4, 0x0

    .line 429
    .local v4, m:I
    const/16 v8, 0x8

    new-array v0, v8, [I

    .line 430
    .local v0, a:[I
    const/16 v8, 0x8

    new-array v6, v8, [I

    .line 431
    .local v6, x:[I
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 432
    .local v7, y:[I
    const/16 v8, 0x8

    new-array v5, v8, [I

    .line 434
    .local v5, t:[I
    const/4 v1, 0x0

    :goto_0
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v1, v8, :cond_0

    .line 442
    iget v3, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    .line 443
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    const/4 v1, 0x1

    :goto_1
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nr:I

    if-lt v1, v8, :cond_1

    .line 461
    const/4 v2, 0x0

    :goto_2
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v2, v8, :cond_3

    .line 471
    const/4 v1, 0x0

    :goto_3
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v1, v8, :cond_4

    .line 478
    return-void

    .line 436
    :cond_0
    mul-int/lit8 v2, v1, 0x4

    .line 438
    const/4 v8, 0x0

    invoke-static {p1, v2, v8}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v8

    aput v8, v0, v1

    .line 439
    aget v8, v0, v1

    iget-object v9, p0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    aget v9, v9, v1

    xor-int/2addr v8, v9

    aput v8, v0, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_1
    const/4 v2, 0x0

    :goto_4
    iget v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    if-lt v2, v8, :cond_2

    .line 457
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_2
    mul-int/lit8 v4, v2, 0x3

    .line 450
    iget-object v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    aget v8, v8, v3

    .line 451
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    aget v10, v6, v2

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    xor-int/2addr v8, v9

    .line 452
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    aget-byte v10, v10, v4

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x8

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 453
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x10

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 454
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    add-int/lit8 v11, v4, 0x2

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x18

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 450
    aput v8, v7, v2

    .line 455
    add-int/lit8 v3, v3, 0x1

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 463
    :cond_3
    mul-int/lit8 v4, v2, 0x3

    .line 464
    iget-object v8, p0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    aget v8, v8, v3

    .line 465
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget v10, v6, v2

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    xor-int/2addr v8, v9

    .line 466
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    aget-byte v10, v10, v4

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x8

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 467
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x10

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 468
    sget-object v9, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    iget-object v10, p0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    add-int/lit8 v11, v4, 0x2

    aget-byte v10, v10, v11

    aget v10, v6, v10

    shr-int/lit8 v10, v10, 0x18

    sget-object v11, Lcom/ecareme/utils/crypto/XAES;->m_lOnBits:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    and-int/2addr v10, v11

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v9

    const/16 v10, 0x18

    invoke-static {v9, v10}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    .line 464
    aput v8, v7, v2

    .line 469
    add-int/lit8 v3, v3, 0x1

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 473
    :cond_4
    mul-int/lit8 v2, v1, 0x4

    .line 474
    aget v8, v7, v1

    const/4 v9, 0x0

    invoke-static {v8, p1, v2, v9}, Lcom/ecareme/utils/ByteUtils;->getBytes(I[BIZ)V

    .line 475
    const/4 v8, 0x0

    aput v8, v6, v1

    .line 476
    const/4 v8, 0x0

    aput v8, v7, v1

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method private static gentables()V
    .locals 13

    .prologue
    const/16 v12, 0x100

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, i:I
    const/4 v3, 0x0

    .line 256
    .local v3, y:B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 257
    .local v0, b:[B
    const/4 v2, 0x0

    .line 259
    .local v2, ib:B
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    aput-byte v8, v4, v8

    .line 260
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    aput-byte v9, v4, v8

    .line 261
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    aput-byte v8, v4, v9

    .line 262
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    aput-byte v10, v4, v9

    .line 263
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    aput-byte v9, v4, v10

    .line 265
    const/4 v1, 0x2

    :goto_0
    if-lt v1, v12, :cond_0

    .line 270
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    const/16 v5, 0x63

    aput-byte v5, v4, v8

    .line 271
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    const/16 v5, 0x63

    aput-byte v8, v4, v5

    .line 272
    const/4 v1, 0x1

    :goto_1
    if-lt v1, v12, :cond_1

    .line 279
    const/4 v3, 0x1

    .line 280
    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0x1e

    if-lt v1, v4, :cond_2

    .line 286
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v12, :cond_3

    .line 302
    return-void

    .line 267
    :cond_0
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    sget-object v5, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    sub-int v6, v1, v9

    aget-byte v5, v5, v6

    sget-object v6, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    sub-int v7, v1, v9

    aget-byte v6, v6, v7

    invoke-static {v6}, Lcom/ecareme/utils/crypto/XAES;->xtime(B)B

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 268
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ltab:[B

    sget-object v5, Lcom/ecareme/utils/crypto/XAES;->m_ptab:[B

    aget-byte v5, v5, v1

    invoke-static {v5}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v5

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    int-to-byte v2, v1

    .line 275
    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->ByteSub(B)B

    move-result v3

    .line 276
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aput-byte v3, v4, v1

    .line 277
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v5

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_2
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_rco:[I

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v5

    aput v5, v4, v1

    .line 283
    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->xtime(B)B

    move-result v3

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_3
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_fbsub:[B

    aget-byte v3, v4, v1

    .line 289
    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->xtime(B)B

    move-result v4

    xor-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v10

    .line 290
    aput-byte v3, v0, v11

    .line 291
    aput-byte v3, v0, v9

    .line 292
    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->xtime(B)B

    move-result v4

    aput-byte v4, v0, v8

    .line 293
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_ftable:[I

    invoke-static {v0, v8, v8}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v5

    aput v5, v4, v1

    .line 295
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_rbsub:[B

    aget-byte v3, v4, v1

    .line 296
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    aget-byte v4, v4, v8

    invoke-static {v4, v3}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v4

    aput-byte v4, v0, v10

    .line 297
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    aget-byte v4, v4, v9

    invoke-static {v4, v3}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v4

    aput-byte v4, v0, v11

    .line 298
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    aget-byte v4, v4, v11

    invoke-static {v4, v3}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v4

    aput-byte v4, v0, v9

    .line 299
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_InCo:[B

    aget-byte v4, v4, v10

    invoke-static {v4, v3}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v4

    aput-byte v4, v0, v8

    .line 300
    sget-object v4, Lcom/ecareme/utils/crypto/XAES;->m_rtable:[I

    invoke-static {v0, v8, v8}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v5

    aput v5, v4, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method private gkey([B)V
    .locals 18
    .parameter "key"

    .prologue
    .line 309
    const/4 v8, 0x0

    .line 310
    .local v8, i:I
    const/4 v9, 0x0

    .line 311
    .local v9, j:I
    const/4 v10, 0x0

    .line 312
    .local v10, k:I
    const/4 v11, 0x0

    .line 313
    .local v11, m:I
    const/4 v7, 0x0

    .line 314
    .local v7, N:I
    const/4 v3, 0x0

    .line 315
    .local v3, C1:I
    const/4 v4, 0x0

    .line 316
    .local v4, C2:I
    const/4 v5, 0x0

    .line 317
    .local v5, C3:I
    const/16 v12, 0x8

    new-array v6, v12, [I

    .line 319
    .local v6, CipherKey:[I
    const/4 v3, 0x1

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    const/16 v13, 0x8

    if-ge v12, v13, :cond_0

    .line 322
    const/4 v4, 0x2

    .line 323
    const/4 v5, 0x3

    .line 331
    :goto_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    if-lt v9, v12, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nr:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    mul-int v7, v12, v13

    .line 345
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    if-lt v8, v12, :cond_2

    .line 351
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    if-lt v8, v12, :cond_3

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v9, v0

    .line 357
    const/4 v10, 0x0

    .line 358
    :goto_4
    if-lt v9, v7, :cond_4

    .line 395
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    if-lt v9, v12, :cond_10

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v8, v0

    .line 401
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    sub-int v12, v7, v12

    if-lt v8, v12, :cond_11

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    sub-int v9, v7, v12

    .line 412
    :goto_7
    if-lt v9, v7, :cond_13

    .line 417
    return-void

    .line 327
    :cond_0
    const/4 v4, 0x3

    .line 328
    const/4 v5, 0x4

    goto :goto_0

    .line 333
    :cond_1
    mul-int/lit8 v11, v9, 0x3

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    move-object v12, v0

    add-int v13, v9, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    rem-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    move-object v12, v0

    add-int/lit8 v13, v11, 0x1

    add-int v14, v9, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v15, v0

    rem-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fi:[B

    move-object v12, v0

    add-int/lit8 v13, v11, 0x2

    add-int v14, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v15, v0

    rem-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v13, v0

    add-int/2addr v13, v9

    sub-int/2addr v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    rem-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    move-object v12, v0

    add-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    add-int/2addr v14, v9

    sub-int/2addr v14, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v15, v0

    rem-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_ri:[B

    move-object v12, v0

    add-int/lit8 v13, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    add-int/2addr v14, v9

    sub-int/2addr v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v15, v0

    rem-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 331
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 347
    :cond_2
    mul-int/lit8 v9, v8, 0x4

    .line 348
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v12

    aput v12, v6, v8

    .line 345
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    aget v13, v6, v8

    aput v13, v12, v8

    .line 351
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 360
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v14, v0

    sub-int v14, v9, v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    const/4 v15, 0x1

    sub-int v15, v9, v15

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/ecareme/utils/crypto/XAES;->RotateLeft(II)I

    move-result v14

    invoke-static {v14}, Lcom/ecareme/utils/crypto/XAES;->SubByte(I)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/ecareme/utils/crypto/XAES;->m_rco:[I

    aget v14, v14, v10

    xor-int/2addr v13, v14

    aput v13, v12, v9

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    const/4 v13, 0x6

    if-gt v12, v13, :cond_9

    .line 363
    const/4 v8, 0x1

    .line 364
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    if-ge v8, v12, :cond_7

    const/4 v12, 0x1

    :goto_9
    add-int v13, v8, v9

    if-ge v13, v7, :cond_8

    const/4 v13, 0x1

    :goto_a
    and-int/2addr v12, v13

    if-nez v12, :cond_6

    .line 391
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    add-int/2addr v9, v12

    .line 392
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 366
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    add-int v13, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    add-int v15, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v15, v0

    add-int v16, v8, v9

    const/16 v17, 0x1

    sub-int v16, v16, v17

    aget v15, v15, v16

    xor-int/2addr v14, v15

    aput v14, v12, v13

    .line 367
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 364
    :cond_7
    const/4 v12, 0x0

    goto :goto_9

    :cond_8
    const/4 v13, 0x0

    goto :goto_a

    .line 373
    :cond_9
    const/4 v8, 0x1

    .line 374
    :goto_b
    const/4 v12, 0x4

    if-ge v8, v12, :cond_c

    const/4 v12, 0x1

    :goto_c
    add-int v13, v8, v9

    if-ge v13, v7, :cond_d

    const/4 v13, 0x1

    :goto_d
    and-int/2addr v12, v13

    if-nez v12, :cond_b

    .line 379
    add-int/lit8 v12, v9, 0x4

    if-ge v12, v7, :cond_a

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    add-int/lit8 v13, v9, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    add-int/lit8 v15, v9, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v15, v0

    add-int/lit8 v16, v9, 0x3

    aget v15, v15, v16

    invoke-static {v15}, Lcom/ecareme/utils/crypto/XAES;->SubByte(I)I

    move-result v15

    xor-int/2addr v14, v15

    aput v14, v12, v13

    .line 383
    :cond_a
    const/4 v8, 0x5

    .line 384
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move v12, v0

    if-ge v8, v12, :cond_e

    const/4 v12, 0x1

    :goto_f
    add-int v13, v8, v9

    if-ge v13, v7, :cond_f

    const/4 v13, 0x1

    :goto_10
    and-int/2addr v12, v13

    if-eqz v12, :cond_5

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    add-int v13, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    add-int v15, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v15, v0

    add-int v16, v8, v9

    const/16 v17, 0x1

    sub-int v16, v16, v17

    aget v15, v15, v16

    xor-int/2addr v14, v15

    aput v14, v12, v13

    .line 387
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 376
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v12, v0

    add-int v13, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    add-int v15, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nk:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v15, v0

    add-int v16, v8, v9

    const/16 v17, 0x1

    sub-int v16, v16, v17

    aget v15, v15, v16

    xor-int/2addr v14, v15

    aput v14, v12, v13

    .line 377
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    .line 374
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_d

    .line 384
    :cond_e
    const/4 v12, 0x0

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    goto :goto_10

    .line 397
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    move-object v12, v0

    add-int v13, v9, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    aget v14, v14, v9

    aput v14, v12, v13

    .line 395
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 403
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    sub-int v12, v7, v12

    sub-int v10, v12, v8

    .line 404
    const/4 v9, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    if-lt v9, v12, :cond_12

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v12, v0

    add-int/2addr v8, v12

    goto/16 :goto_6

    .line 406
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    move-object v12, v0

    add-int v13, v10, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    add-int v15, v8, v9

    aget v14, v14, v15

    invoke-static {v14}, Lcom/ecareme/utils/crypto/XAES;->InvMixCol(I)I

    move-result v14

    aput v14, v12, v13

    .line 404
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 414
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_rkey:[I

    move-object v12, v0

    sub-int v13, v9, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_Nb:I

    move v14, v0

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/utils/crypto/XAES;->m_fkey:[I

    move-object v14, v0

    aget v14, v14, v9

    aput v14, v12, v13

    .line 415
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7
.end method

.method private static product(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-static {p0, v3}, Lcom/ecareme/utils/ByteUtils;->getBytes(IZ)[B

    move-result-object v0

    .line 201
    .local v0, xb:[B
    invoke-static {p1, v3}, Lcom/ecareme/utils/ByteUtils;->getBytes(IZ)[B

    move-result-object v1

    .line 203
    .local v1, yb:[B
    aget-byte v2, v0, v3

    aget-byte v3, v1, v3

    invoke-static {v2, v3}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v2

    invoke-static {v2}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v2

    .line 204
    aget-byte v3, v0, v4

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v3

    .line 203
    xor-int/2addr v2, v3

    .line 205
    aget-byte v3, v0, v5

    aget-byte v4, v1, v5

    invoke-static {v3, v4}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v3

    .line 203
    xor-int/2addr v2, v3

    .line 206
    aget-byte v3, v0, v6

    aget-byte v4, v1, v6

    invoke-static {v3, v4}, Lcom/ecareme/utils/crypto/XAES;->bmul(BB)B

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/XAES;->toUnsign(I)I

    move-result v3

    .line 203
    xor-int/2addr v2, v3

    return v2
.end method

.method private static toUnsign(I)I
    .locals 1
    .parameter "b"

    .prologue
    .line 100
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static xtime(B)B
    .locals 1
    .parameter "a"

    .prologue
    .line 154
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    .line 156
    shl-int/lit8 v0, p0, 0x1

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    .line 160
    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method


# virtual methods
.method DecryptData([B)[B
    .locals 10
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 613
    array-length v5, p1

    .line 614
    .local v5, secretLength:I
    if-eqz v5, :cond_0

    rem-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_1

    .line 616
    :cond_0
    new-instance v6, Lcom/ecareme/utils/crypto/CryptoException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bad length:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in encrypted data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ecareme/utils/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 620
    :cond_1
    new-array v4, v5, [B

    .line 622
    .local v4, outTemp:[B
    new-array v0, v8, [B

    .line 623
    .local v0, buff:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_3

    .line 630
    invoke-static {v4, v7}, Lcom/ecareme/utils/ByteUtils;->getInt([BZ)I

    move-result v2

    .line 632
    .local v2, clearLength:I
    if-ltz v2, :cond_2

    sub-int v6, v5, v9

    if-le v2, v6, :cond_4

    .line 634
    :cond_2
    new-instance v6, Lcom/ecareme/utils/crypto/CryptoException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bad length in decrypted data. expect:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ecareme/utils/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 625
    .end local v2           #clearLength:I
    :cond_3
    invoke-static {p1, v3, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    invoke-direct {p0, v0}, Lcom/ecareme/utils/crypto/XAES;->decryptBuffer([B)V

    .line 627
    invoke-static {v0, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 637
    .restart local v2       #clearLength:I
    :cond_4
    new-array v1, v2, [B

    .line 638
    .local v1, byteClear:[B
    invoke-static {v4, v9, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    return-object v1
.end method

.method EncryptData([B)[B
    .locals 11
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    .line 572
    array-length v6, p1

    .line 573
    .local v6, len:I
    array-length v7, p1

    add-int/lit8 v3, v7, 0x4

    .line 577
    .local v3, encryptedLength:I
    rem-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_0

    .line 579
    add-int/lit8 v7, v3, 0x10

    rem-int/lit8 v8, v3, 0x10

    sub-int v3, v7, v8

    .line 581
    :cond_0
    new-array v0, v9, [B

    .line 582
    .local v0, buff:[B
    add-int/lit8 v7, v3, 0x4

    new-array v5, v7, [B

    .line 583
    .local v5, inTemp:[B
    new-array v1, v3, [B

    .line 588
    .local v1, byteOut:[B
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v6, v7}, Lcom/ecareme/utils/ByteUtils;->getBytes(IZ)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {p1, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 603
    return-object v1

    .line 594
    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v4, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    invoke-direct {p0, v0}, Lcom/ecareme/utils/crypto/XAES;->encryptbuffer([B)V

    .line 596
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v0, v7, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 599
    .end local v4           #i:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 601
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lcom/ecareme/utils/crypto/CryptoException;

    invoke-direct {v7, v2}, Lcom/ecareme/utils/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
