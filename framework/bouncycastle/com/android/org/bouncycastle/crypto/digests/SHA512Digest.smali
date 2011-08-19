.class public Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 36
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 6
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 54
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 55
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 56
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 57
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 58
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 59
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 60
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 61
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 63
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 65
    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 79
    const-wide v0, 0x6a09e667f3bcc908L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 80
    const-wide v0, -0x4498517a7b3558c5L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 81
    const-wide v0, 0x3c6ef372fe94f82bL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 82
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 83
    const-wide v0, 0x510e527fade682d1L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 84
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 85
    const-wide v0, 0x1f83d9abfb41bd6bL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 86
    const-wide v0, 0x5be0cd19137e2179L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 87
    return-void
.end method
