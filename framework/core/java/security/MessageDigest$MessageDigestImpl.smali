.class Ljava/security/MessageDigest$MessageDigestImpl;
.super Ljava/security/MessageDigest;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageDigestImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/MessageDigestSpi;


# direct methods
.method private constructor <init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "messageDigestSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 385
    invoke-direct {p0, p3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 386
    #setter for: Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/MessageDigest;->access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;

    .line 387
    iput-object p1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_1c

    .line 424
    iget-object v1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v1}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    .line 425
    .local v0, spi:Ljava/security/MessageDigestSpi;
    new-instance v1, Ljava/security/MessageDigest$MessageDigestImpl;

    invoke-virtual {p0}, Ljava/security/MessageDigest$MessageDigestImpl;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/MessageDigest$MessageDigestImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 428
    .end local v0           #spi:Ljava/security/MessageDigestSpi;
    :cond_1c
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v1}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v1
.end method

.method protected engineDigest()[B
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 394
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 411
    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    .line 412
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 417
    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 418
    return-void
.end method
