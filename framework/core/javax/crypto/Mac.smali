.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private isInitMac:Z

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Mac"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "macSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 65
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 68
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p0, :cond_8

    .line 104
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 106
    :cond_8
    sget-object v1, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 107
    .local v0, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 133
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_10
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 136
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1c

    .line 137
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1c
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p1, :cond_a

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_a
    if-nez p0, :cond_12

    .line 166
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 168
    :cond_12
    sget-object v1, Ljavax/crypto/Mac;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, spi:Ljava/lang/Object;
    new-instance v1, Ljavax/crypto/Mac;

    check-cast v0, Ljavax/crypto/MacSpi;

    .end local v0           #spi:Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    .line 417
    .local v1, newSpiImpl:Ljavax/crypto/MacSpi;
    new-instance v0, Ljavax/crypto/Mac;

    iget-object v2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 418
    .local v0, mac:Ljavax/crypto/Mac;
    iget-boolean v2, p0, Ljavax/crypto/Mac;->isInitMac:Z

    iput-boolean v2, v0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 419
    return-object v0
.end method

.method public final doFinal([BI)V
    .registers 8
    .parameter "output"
    .parameter "outOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 353
    iget-boolean v2, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v2, :cond_a

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 356
    :cond_a
    if-nez p1, :cond_14

    .line 357
    new-instance v2, Ljavax/crypto/ShortBufferException;

    const-string v3, "output == null"

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_14
    if-ltz p2, :cond_19

    array-length v2, p1

    if-lt p2, v2, :cond_32

    .line 360
    :cond_19
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect outOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_32
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v1

    .line 363
    .local v1, t:I
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v1, v2, :cond_5b

    .line 364
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer is short. Needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_5b
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 367
    .local v0, result:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    return-void
.end method

.method public final doFinal()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 324
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 327
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 387
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 390
    :cond_a
    if-eqz p1, :cond_13

    .line 391
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 393
    :cond_13
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getMacLength()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_a

    .line 219
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z
    :try_end_13
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_13} :catch_14

    .line 227
    return-void

    .line 224
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_a

    .line 199
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 203
    return-void
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 405
    return-void
.end method

.method public final update(B)V
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 238
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 241
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 242
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 301
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 304
    :cond_a
    if-eqz p1, :cond_12

    .line 305
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 309
    return-void

    .line 307
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update([B)V
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 285
    :cond_a
    if-eqz p1, :cond_13

    .line 286
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 288
    :cond_13
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_a

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 264
    :cond_a
    if-nez p1, :cond_d

    .line 271
    :goto_c
    return-void

    .line 267
    :cond_d
    if-ltz p2, :cond_16

    if-ltz p3, :cond_16

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1e

    .line 268
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1e
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    goto :goto_c
.end method
