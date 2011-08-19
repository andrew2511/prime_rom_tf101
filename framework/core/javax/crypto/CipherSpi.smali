.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 451
    if-nez p1, :cond_b

    .line 452
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 454
    :cond_b
    if-nez p2, :cond_15

    .line 455
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 457
    :cond_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 458
    .local v5, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 460
    .local v3, limit:I
    sub-int v6, v3, v5

    if-gtz v6, :cond_23

    move v6, v7

    .line 484
    :goto_22
    return v6

    .line 466
    :cond_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 468
    .local v0, bInput:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 469
    .local v4, offset:I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .line 470
    .local v1, bOutput:[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    .end local v4           #offset:I
    :goto_3c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_59

    .line 477
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 472
    .end local v0           #bInput:[B
    .end local v1           #bOutput:[B
    :cond_4b
    sub-int v6, v3, v5

    new-array v0, v6, [B

    .line 473
    .restart local v0       #bInput:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 474
    sub-int v6, v3, v5

    invoke-virtual {p0, v0, v7, v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .restart local v1       #bOutput:[B
    goto :goto_3c

    .line 480
    :cond_59
    :try_start_59
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_5c
    .catch Ljava/nio/BufferOverflowException; {:try_start_59 .. :try_end_5c} :catch_5e

    .line 484
    array-length v6, v1

    goto :goto_22

    .line 481
    :catch_5e
    move-exception v2

    .line 482
    .local v2, e:Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 5
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 333
    if-nez p1, :cond_b

    .line 334
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_b
    if-nez p2, :cond_15

    .line 337
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 339
    :cond_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 340
    .local v5, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 341
    .local v3, limit:I
    sub-int v6, v3, v5

    if-gtz v6, :cond_23

    move v6, v7

    .line 364
    :goto_22
    return v6

    .line 346
    :cond_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 348
    .local v0, bInput:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 349
    .local v4, offset:I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .line 350
    .local v1, bOutput:[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    .end local v4           #offset:I
    :goto_3c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_59

    .line 357
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 352
    .end local v0           #bInput:[B
    .end local v1           #bOutput:[B
    :cond_4b
    sub-int v6, v3, v5

    new-array v0, v6, [B

    .line 353
    .restart local v0       #bInput:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 354
    sub-int v6, v3, v5

    invoke-virtual {p0, v0, v7, v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .restart local v1       #bOutput:[B
    goto :goto_3c

    .line 360
    :cond_59
    :try_start_59
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_5c
    .catch Ljava/nio/BufferOverflowException; {:try_start_59 .. :try_end_5c} :catch_5e

    .line 364
    array-length v6, v1

    goto :goto_22

    .line 361
    :catch_5e
    move-exception v2

    .line 362
    .local v2, e:Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
