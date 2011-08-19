.class Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPairGeneratorImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method private constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "keyPairGeneratorSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 259
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 260
    #setter for: Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/KeyPairGenerator;->access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;

    .line 261
    iput-object p1, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 4
    .parameter "keysize"
    .parameter "random"

    .prologue
    .line 268
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 269
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "param"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 284
    return-void
.end method
