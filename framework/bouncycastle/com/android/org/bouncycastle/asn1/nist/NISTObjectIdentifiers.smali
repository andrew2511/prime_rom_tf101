.class public interface abstract Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NISTObjectIdentifiers.java"


# static fields
.field public static final aes:Ljava/lang/String; = "2.16.840.1.101.3.4.1"

.field public static final dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final nistAlgorithm:Ljava/lang/String; = "2.16.840.1.101.3.4"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.22"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.23"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.25"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.26"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.41"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.42"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.43"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.44"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.45"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.47"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
