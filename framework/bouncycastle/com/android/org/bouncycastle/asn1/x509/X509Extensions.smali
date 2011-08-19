.class public Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X509Extensions.java"


# static fields
.field public static final AuditIdentity:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityInfoAccess:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BasicConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BiometricInfo:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificateIssuer:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificatePolicies:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final FreshestCRL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InstructionCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InvalidityDate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuerAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final KeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final LogoType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NameConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NoRevAvail:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyMappings:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PrivateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final QCStatements:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ReasonCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectInfoAccess:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TargetInformation:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private table:Lcom/android/org/bouncycastle/asn1/OrderedTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 71
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 116
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 121
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->LogoType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 156
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 161
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 166
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuditIdentity:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 176
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 12
    .parameter "seq"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 179
    new-instance v5, Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    .line 218
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 220
    .local v0, e:Ljava/util/Enumeration;
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 222
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 225
    .local v2, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    .line 226
    .local v3, sSize:I
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 229
    .local v1, key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    .line 231
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v5

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(Lcom/android/org/bouncycastle/asn1/DERBoolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 242
    .local v4, value:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_41
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v5, v1, v4}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    goto :goto_11

    .line 233
    .end local v4           #value:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_47
    if-ne v3, v9, :cond_57

    .line 235
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .restart local v4       #value:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    goto :goto_41

    .line 239
    .end local v4           #value:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_57
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad sequence size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    .end local v1           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v2           #s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3           #sSize:I
    :cond_70
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "extensions"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 7
    .parameter "ordering"
    .parameter "extensions"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 179
    new-instance v3, Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    .line 269
    if-nez p1, :cond_28

    .line 271
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 279
    .local v0, e:Ljava/util/Enumeration;
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 281
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 282
    .local v2, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .line 283
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3, v2, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    goto :goto_10

    .line 275
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_28
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0       #e:Ljava/util/Enumeration;
    goto :goto_10

    .line 286
    :cond_2d
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 8
    .parameter "objectIDs"
    .parameter "values"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 179
    new-instance v4, Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    .line 298
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 301
    .local v1, e:Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 303
    .local v0, count:I
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 305
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 306
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .line 308
    .local v2, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 310
    goto :goto_f

    .line 312
    .end local v2           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_29
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 186
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 4
    .parameter "obj"

    .prologue
    .line 192
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v0, :cond_a

    .line 194
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .end local p0
    move-object v0, p0

    .line 204
    :goto_9
    return-object v0

    .line 197
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 199
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 202
    .restart local p0
    :cond_16
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_25

    .line 204
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    goto :goto_9

    .line 207
    .restart local p0
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equivalent(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)Z
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size()I

    move-result v3

    if-eq v2, v3, :cond_11

    move v2, v4

    .line 404
    :goto_10
    return v2

    .line 389
    :cond_11
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 392
    .local v0, e1:Ljava/util/Enumeration;
    :cond_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 395
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 397
    .local v1, key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move v2, v4

    .line 400
    goto :goto_10

    .line 404
    .end local v1           #key:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_37
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .registers 3
    .parameter "oid"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    return-object p0
.end method

.method public oids()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 8

    .prologue
    .line 350
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 352
    .local v5, vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size()I

    move-result v3

    .line 354
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v3, :cond_41

    .line 356
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 357
    .local v2, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->table:Lcom/android/org/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .line 359
    .local v0, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 361
    .local v4, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 363
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 366
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 370
    :cond_2f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 372
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 375
    .end local v0           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_41
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v6
.end method
