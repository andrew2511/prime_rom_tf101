.class Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final EMPTY_BYTES:[B


# instance fields
.field private final _originalLength:I

.field private _remaining:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "length"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    if-gez p2, :cond_d

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_d
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    .line 31
    if-nez p2, :cond_17

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 35
    :cond_17
    return-void
.end method


# virtual methods
.method getRemaining()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 45
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_7

    .line 47
    const/4 v1, -0x1

    .line 62
    :goto_6
    return v1

    .line 50
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 52
    .local v0, b:I
    if-gez v0, :cond_36

    .line 54
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_36
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_40

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_40
    move v1, v0

    .line 62
    goto :goto_6
.end method

.method public read([BII)I
    .registers 9
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_6

    .line 70
    const/4 v2, -0x1

    .line 86
    :goto_5
    return v2

    .line 73
    :cond_6
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 74
    .local v1, toRead:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 76
    .local v0, numRead:I
    if-gez v0, :cond_3b

    .line 78
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEF length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object truncated by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_3b
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_46

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_46
    move v2, v0

    .line 86
    goto :goto_5
.end method

.method toByteArray()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_7

    .line 94
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    .line 103
    :goto_6
    return-object v1

    .line 97
    :cond_7
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    new-array v0, v1, [B

    .line 98
    .local v0, bytes:[B
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-eqz v1, :cond_3f

    .line 100
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    move-object v1, v0

    .line 103
    goto :goto_6
.end method
