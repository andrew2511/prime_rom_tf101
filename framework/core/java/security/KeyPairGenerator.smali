.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$1;,
        Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SERVICE:Ljava/lang/String; = "KeyPairGenerator"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyPairGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithm"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .registers 8
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 82
    if-nez p0, :cond_9

    .line 83
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 85
    :cond_9
    sget-object v5, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v5, p0, v6}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v3

    .line 86
    .local v3, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v4, v3, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 87
    .local v4, spi:Ljava/lang/Object;
    iget-object v1, v3, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 88
    .local v1, provider:Ljava/security/Provider;
    instance-of v5, v4, Ljava/security/KeyPairGenerator;

    if-eqz v5, :cond_21

    .line 89
    move-object v0, v4

    check-cast v0, Ljava/security/KeyPairGenerator;

    move-object v2, v0

    .line 90
    .local v2, result:Ljava/security/KeyPairGenerator;
    iput-object p0, v2, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 91
    iput-object v1, v2, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    move-object v5, v2

    .line 94
    .end local v2           #result:Ljava/security/KeyPairGenerator;
    .end local v4           #spi:Ljava/lang/Object;
    :goto_20
    return-object v5

    .restart local v4       #spi:Ljava/lang/Object;
    :cond_21
    new-instance v5, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v4, Ljava/security/KeyPairGeneratorSpi;

    .end local v4           #spi:Ljava/lang/Object;
    invoke-direct {v5, v4, v1, p0, v6}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_20
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    .line 115
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 118
    :cond_e
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 119
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1a

    .line 120
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1a
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .registers 7
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    if-nez p1, :cond_9

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 145
    :cond_9
    if-nez p0, :cond_11

    .line 146
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 148
    :cond_11
    sget-object v3, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v3, p0, p1, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, spi:Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/KeyPairGenerator;

    if-eqz v3, :cond_25

    .line 150
    move-object v0, v2

    check-cast v0, Ljava/security/KeyPairGenerator;

    move-object v1, v0

    .line 151
    .local v1, result:Ljava/security/KeyPairGenerator;
    iput-object p0, v1, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 152
    iput-object p1, v1, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    move-object v3, v1

    .line 155
    .end local v1           #result:Ljava/security/KeyPairGenerator;
    .end local v2           #spi:Ljava/lang/Object;
    :goto_24
    return-object v3

    .restart local v2       #spi:Ljava/lang/Object;
    :cond_25
    new-instance v3, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v2, Ljava/security/KeyPairGeneratorSpi;

    .end local v2           #spi:Ljava/lang/Object;
    invoke-direct {v3, v2, p1, p0, v4}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_24
.end method


# virtual methods
.method public final genKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public initialize(I)V
    .registers 3
    .parameter "keysize"

    .prologue
    .line 176
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 177
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "keysize"
    .parameter "random"

    .prologue
    .line 230
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 192
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "param"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 246
    return-void
.end method
