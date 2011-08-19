.class Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;
.super Ljava/lang/Object;
.source "CryptoProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/security/provider/crypto/CryptoProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/provider/crypto/CryptoProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "MessageDigest.SHA-1"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1_MessageDigestImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "MessageDigest.SHA-1 ImplementedIn"

    const-string v2, "Software"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA1"

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA"

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "SecureRandom.SHA1PRNG"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v2, "Software"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3c
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Signature.SHA1withDSA"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1withDSA_SignatureImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Signature.SHA1withDSA ImplementedIn"

    const-string v2, "Software"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.SHAwithDSA"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.DSAwithSHA1"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.SHA1/DSA"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.SHA/DSA"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.SHA-1/DSA"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.DSA"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.DSS"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.OID.1.2.840.10040.4.3"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.1.2.840.10040.4.3"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.13"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.27"

    const-string v2, "SHA1withDSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "KeyFactory.DSA"

    const-string v2, "org.apache.harmony.security.provider.crypto.DSAKeyFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "KeyFactory.DSA ImplementedIn"

    const-string v2, "Software"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.KeyFactory.1.3.14.3.2.12"

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/CryptoProvider$1;->this$0:Lorg/apache/harmony/security/provider/crypto/CryptoProvider;

    const-string v1, "Alg.Alias.KeyFactory.1.2.840.10040.4.1"

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
