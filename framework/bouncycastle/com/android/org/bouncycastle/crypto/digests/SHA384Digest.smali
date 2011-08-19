.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 37
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 6
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    .line 55
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 56
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 57
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 58
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 59
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 60
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    .line 64
    const/16 v0, 0x30

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x30

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 78
    const-wide v0, -0x344462a23efa6128L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    .line 79
    const-wide v0, 0x629a292a367cd507L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    .line 80
    const-wide v0, -0x6ea6fea5cf8f22e9L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    .line 81
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    .line 82
    const-wide v0, 0x67332667ffc00b31L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    .line 83
    const-wide v0, -0x714bb57897a7eaefL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    .line 84
    const-wide v0, -0x24f3d1f29b067059L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    .line 85
    const-wide v0, 0x47b5481dbefa4fa4L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    .line 86
    return-void
.end method
