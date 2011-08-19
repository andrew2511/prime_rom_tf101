.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 8
    .parameter "number"
    .parameter "swapHalfWord"

    .prologue
    const/4 v7, 0x0

    .line 39
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 40
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 43
    :cond_0
    const-wide/16 v2, 0x0

    .line 44
    .local v2, ret:J
    const/4 v0, 0x0

    .line 45
    .local v0, pos:I
    array-length v6, p0

    new-array v5, v6, [B

    .line 46
    .local v5, tmp_number:[B
    array-length v6, p0

    invoke-static {p0, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    if-nez p1, :cond_1

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, tmp:B
    const/4 v0, 0x0

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 51
    aget-byte v4, v5, v0

    .line 52
    add-int/lit8 v1, v0, 0x1

    .end local v0           #pos:I
    .local v1, pos:I
    aget-byte v6, v5, v1

    aput-byte v6, v5, v0

    .line 53
    aput-byte v4, v5, v1

    .line 50
    add-int/lit8 v0, v1, 0x1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    goto :goto_0

    .line 57
    .end local v4           #tmp:B
    :cond_1
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v2, v6

    .line 58
    const/4 v0, 0x1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 59
    const/16 v6, 0x8

    shl-long/2addr v2, v6

    .line 60
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    return-wide v2
.end method

.method static long2byteArray(JIZ)[B
    .locals 8
    .parameter "number"
    .parameter "length"
    .parameter "swapHalfWord"

    .prologue
    .line 81
    new-array v2, p2, [B

    .line 82
    .local v2, ret:[B
    const/4 v0, 0x0

    .line 83
    .local v0, pos:I
    const-wide/16 v4, 0x0

    .line 85
    .local v4, tmp_number:J
    rem-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_0

    const/4 v6, 0x2

    if-ge p2, v6, :cond_1

    .line 86
    :cond_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 89
    :cond_1
    move-wide v4, p0

    .line 90
    const/4 v6, 0x1

    sub-int v0, p2, v6

    :goto_0
    if-ltz v0, :cond_2

    .line 91
    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 92
    const/16 v6, 0x8

    shr-long/2addr v4, v6

    .line 90
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 95
    :cond_2
    if-nez p3, :cond_4

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, tmp:B
    const/4 v0, 0x0

    move v1, v0

    .end local v0           #pos:I
    .local v1, pos:I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 98
    aget-byte v3, v2, v1

    .line 99
    add-int/lit8 v0, v1, 0x1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    aget-byte v6, v2, v0

    aput-byte v6, v2, v1

    .line 100
    aput-byte v3, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .end local v0           #pos:I
    .restart local v1       #pos:I
    goto :goto_1

    :cond_3
    move v0, v1

    .line 104
    .end local v1           #pos:I
    .end local v3           #tmp:B
    .restart local v0       #pos:I
    :cond_4
    return-object v2
.end method
