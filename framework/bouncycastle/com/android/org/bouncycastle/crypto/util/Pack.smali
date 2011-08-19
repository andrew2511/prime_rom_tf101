.class public abstract Lcom/android/org/bouncycastle/crypto/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .registers 4
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 7
    aget-byte v1, p0, p1

    shl-int/lit8 v0, v1, 0x18

    .line 8
    .local v0, n:I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 10
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public static bigEndianToLong([BI)J
    .registers 10
    .parameter "bs"
    .parameter "off"

    .prologue
    const-wide v6, 0xffffffffL

    .line 24
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 25
    .local v0, hi:I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 26
    .local v1, lo:I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static intToBigEndian(I[BI)V
    .registers 4
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 16
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 17
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 18
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 19
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 20
    return-void
.end method

.method public static longToBigEndian(J[BI)V
    .registers 6
    .parameter "n"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 31
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 32
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 33
    return-void
.end method
