.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SERVICE:Ljava/lang/String; = "SecureRandom"

.field private static volatile internalSecureRandom:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final secureRandomSpi:Ljava/security/SecureRandomSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SecureRandom"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 91
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 92
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 93
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getSecureRandomService()Ljava/security/Provider$Service;

    move-result-object v1

    .line 94
    .local v1, service:Ljava/security/Provider$Service;
    if-nez v1, :cond_1d

    .line 95
    iput-object v4, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 96
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 97
    const-string v2, "SHA1PRNG"

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 107
    :goto_1c
    return-void

    .line 100
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 102
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_33

    goto :goto_1c

    .line 103
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 104
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .registers 4
    .parameter "secureRandomSpi"
    .parameter "provider"

    .prologue
    .line 130
    const-string v0, "unknown"

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .parameter "secureRandomSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 138
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 139
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "seed"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 117
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_8

    .line 159
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 161
    :cond_8
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 162
    .local v0, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 4
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 187
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 189
    :cond_e
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 190
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_1a

    .line 191
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1a
    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 214
    if-nez p1, :cond_8

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 217
    :cond_8
    if-nez p0, :cond_10

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 220
    :cond_10
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, spi:Ljava/lang/Object;
    new-instance v1, Ljava/security/SecureRandom;

    check-cast v0, Ljava/security/SecureRandomSpi;

    .end local v0           #spi:Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSeed(I)[B
    .registers 3
    .parameter "numBytes"

    .prologue
    .line 317
    sget-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    .line 318
    .local v0, result:Ljava/security/SecureRandom;
    if-nez v0, :cond_b

    .line 320
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0           #result:Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0       #result:Ljava/security/SecureRandom;
    sput-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    .line 322
    :cond_b
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 3
    .parameter "numBytes"

    .prologue
    .line 334
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method protected final next(I)I
    .registers 8
    .parameter "numBits"

    .prologue
    .line 289
    if-gez p1, :cond_1b

    .line 290
    const/4 p1, 0x0

    .line 296
    :cond_3
    :goto_3
    add-int/lit8 v4, p1, 0x7

    div-int/lit8 v0, v4, 0x8

    .line 297
    .local v0, bytes:I
    new-array v2, v0, [B

    .line 298
    .local v2, next:[B
    const/4 v3, 0x0

    .line 300
    .local v3, ret:I
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 301
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_22

    .line 302
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x8

    or-int v3, v4, v5

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 292
    .end local v0           #bytes:I
    .end local v1           #i:I
    .end local v2           #next:[B
    .end local v3           #ret:I
    :cond_1b
    const/16 v4, 0x20

    if-le p1, v4, :cond_3

    .line 293
    const/16 p1, 0x20

    goto :goto_3

    .line 304
    .restart local v0       #bytes:I
    .restart local v1       #i:I
    .restart local v2       #next:[B
    .restart local v3       #ret:I
    :cond_22
    mul-int/lit8 v4, v0, 0x8

    sub-int/2addr v4, p1

    ushr-int/2addr v3, v4

    .line 305
    return v3
.end method

.method public declared-synchronized nextBytes([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeed(J)V
    .registers 6
    .parameter "seed"

    .prologue
    .line 258
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_7

    .line 264
    :goto_6
    return-void

    .line 261
    :cond_7
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 262
    .local v0, byteSeed:[B
    const/4 v1, 0x0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p1, p2, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 263
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_6
.end method

.method public declared-synchronized setSeed([B)V
    .registers 3
    .parameter "seed"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
