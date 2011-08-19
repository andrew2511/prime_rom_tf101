.class public Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "KeyDerivationFunc.java"


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "seq"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 15
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "id"
    .parameter "params"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 22
    return-void
.end method
