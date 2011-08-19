.class Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 24
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v0, :cond_1f

    .line 27
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 30
    :cond_1f
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 31
    return-void
.end method

.method private checkForEof()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    .line 44
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 47
    :cond_16
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 92
    const/4 v2, -0x1

    .line 108
    :goto_7
    return v2

    .line 95
    :cond_8
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 97
    .local v0, b:I
    if-gez v0, :cond_16

    .line 100
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 103
    :cond_16
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 105
    .local v1, v:I
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 106
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    move v2, v1

    .line 108
    goto :goto_7
.end method

.method public read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v1, :cond_7

    const/4 v1, 0x3

    if-ge p3, v1, :cond_c

    .line 56
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v1

    .line 84
    :goto_b
    return v1

    .line 59
    :cond_c
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v1, :cond_12

    .line 61
    const/4 v1, -0x1

    goto :goto_b

    .line 64
    :cond_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    sub-int v3, p3, v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 66
    .local v0, numRead:I
    if-gez v0, :cond_25

    .line 69
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 72
    :cond_25
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 73
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 75
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 78
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v1, :cond_4b

    .line 81
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 84
    :cond_4b
    add-int/lit8 v1, v0, 0x2

    goto :goto_b
.end method

.method setEofOn00(Z)V
    .registers 2
    .parameter "eofOn00"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 38
    return-void
.end method
