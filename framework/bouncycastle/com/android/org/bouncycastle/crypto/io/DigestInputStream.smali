.class public Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "stream"
    .parameter "digest"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 20
    return-void
.end method


# virtual methods
.method public getDigest()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 27
    .local v0, b:I
    if-ltz v0, :cond_e

    .line 29
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 31
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 41
    .local v0, n:I
    if-lez v0, :cond_d

    .line 43
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 45
    :cond_d
    return v0
.end method
