.class abstract Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInts([B)[I
    .registers 5
    .parameter "bs"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 9
    new-array v0, v3, [I

    .line 10
    .local v0, us:[I
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    .line 11
    const/4 v1, 0x1

    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 12
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 13
    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 14
    return-object v0
.end method

.method static multiplyP([I)V
    .registers 5
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v1, 0x3

    aget v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    move v0, v1

    .line 21
    .local v0, lsb:Z
    :goto_a
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    .line 22
    if-eqz v0, :cond_16

    .line 26
    aget v1, p0, v3

    const/high16 v2, -0x1f00

    xor-int/2addr v1, v2

    aput v1, p0, v3

    .line 28
    :cond_16
    return-void

    .end local v0           #lsb:Z
    :cond_17
    move v0, v3

    .line 20
    goto :goto_a
.end method

.method static multiplyP8([I)V
    .registers 2
    .parameter "x"

    .prologue
    .line 32
    const/16 v0, 0x8

    .local v0, i:I
    :goto_2
    if-eqz v0, :cond_a

    .line 34
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 32
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 36
    :cond_a
    return-void
.end method

.method static shiftRight([B)V
    .registers 5
    .parameter "block"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, i:I
    const/4 v1, 0x0

    .line 44
    .local v1, bit:I
    :goto_2
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 45
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 52
    return-void

    .line 50
    :cond_13
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    .line 51
    goto :goto_2
.end method

.method static shiftRight([I)V
    .registers 5
    .parameter "block"

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, i:I
    const/4 v1, 0x0

    .line 60
    .local v1, bit:I
    :goto_2
    aget v0, p0, v2

    .line 61
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    aput v3, p0, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 68
    return-void

    .line 66
    :cond_f
    shl-int/lit8 v1, v0, 0x1f

    .line 67
    goto :goto_2
.end method

.method static xor([B[B)V
    .registers 5
    .parameter "block"
    .parameter "val"

    .prologue
    .line 72
    const/16 v0, 0xf

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_f

    .line 74
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 76
    :cond_f
    return-void
.end method

.method static xor([I[I)V
    .registers 5
    .parameter "block"
    .parameter "val"

    .prologue
    .line 80
    const/4 v0, 0x3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_d

    .line 82
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 80
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 84
    :cond_d
    return-void
.end method
