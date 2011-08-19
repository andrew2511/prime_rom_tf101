.class public Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .registers 3
    .parameter "name"
    .parameter "certSerialNumber"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "name"
    .parameter "certSerialNumber"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .registers 4
    .parameter "obj"

    .prologue
    .line 22
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_8

    .line 24
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    .end local p0
    move-object v0, p0

    .line 28
    :goto_7
    return-object v0

    .line 26
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 31
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getCertificateSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getName()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 74
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
