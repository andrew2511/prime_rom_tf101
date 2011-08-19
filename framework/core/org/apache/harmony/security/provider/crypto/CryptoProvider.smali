.class public final Lorg/apache/harmony/security/provider/crypto/CryptoProvider;
.super Ljava/security/Provider;
.source "CryptoProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x6ee674ab6c76830eL


# direct methods
.method public constructor <init>()V
    .registers 10

    .prologue
    .line 41
    const-string v5, "Crypto"

    const-wide/high16 v6, 0x3ff0

    const-string v8, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    invoke-direct {p0, v5, v6, v7, v8}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 45
    const-string v1, "org.apache.harmony.security.provider.crypto.SHA1_MessageDigestImpl"

    .line 46
    .local v1, MD_NAME:Ljava/lang/String;
    const-string v4, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    .line 48
    .local v4, SR_NAME:Ljava/lang/String;
    const-string v3, "org.apache.harmony.security.provider.crypto.SHA1withDSA_SignatureImpl"

    .line 50
    .local v3, SIGN_NAME:Ljava/lang/String;
    const-string v2, "SHA1withDSA"

    .line 53
    .local v2, SIGN_ALIAS:Ljava/lang/String;
    const-string v0, "org.apache.harmony.security.provider.crypto.DSAKeyFactoryImpl"

    .line 56
    .local v0, KEYF_NAME:Ljava/lang/String;
    new-instance v5, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;

    invoke-direct {v5, p0}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;-><init>(Lorg/apache/harmony/security/provider/crypto/CryptoProvider;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 93
    return-void
.end method
