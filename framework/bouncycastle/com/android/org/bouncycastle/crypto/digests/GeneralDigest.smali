.class public abstract Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 6
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 35
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 38
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 39
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 6

    .prologue
    .line 97
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 102
    .local v0, bitLength:J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 104
    :goto_a
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_13

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_a

    .line 109
    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 111
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 112
    return-void
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 127
    const/16 v0, 0x40

    return v0
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 116
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 118
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 121
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v3, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 123
    :cond_14
    return-void
.end method

.method public update(B)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 46
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 49
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 52
    :cond_19
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 53
    return-void
.end method

.method public update([BII)V
    .registers 8
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 63
    :goto_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    .line 65
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 74
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2a

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 80
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    goto :goto_10

    .line 86
    :cond_2a
    :goto_2a
    if-lez p3, :cond_36

    .line 88
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 91
    add-int/lit8 p3, p3, -0x1

    goto :goto_2a

    .line 93
    :cond_36
    return-void
.end method
