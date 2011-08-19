.class public interface abstract Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.super Ljava/lang/Object;
.source "X509ObjectIdentifiers.java"


# static fields
.field public static final commonName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final countryName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final crlAccessMethod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id:Ljava/lang/String; = "2.5.4"

.field public static final id_SHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_at_name:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ea_rsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final localityName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ocspAccessMethod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final organization:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final organizationalUnitName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ripemd160:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ripemd160WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final stateOrProvinceName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.3.2.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.3.3.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.8.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".48"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
