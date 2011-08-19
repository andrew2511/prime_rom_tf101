.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "EncryptionScheme.java"


# instance fields
.field obj:Lcom/android/org/bouncycastle/asn1/DERObject;

.field objectId:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->objectId:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->obj:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 22
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 33
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->objectId:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 34
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->obj:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 36
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->obj:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method
