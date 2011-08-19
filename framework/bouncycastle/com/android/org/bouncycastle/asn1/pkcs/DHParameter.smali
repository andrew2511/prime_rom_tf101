.class public Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DHParameter.java"


# instance fields
.field g:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field l:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field p:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 41
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 44
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 52
    :goto_25
    return-void

    .line 50
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_25
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 5
    .parameter "p"
    .parameter "g"
    .parameter "l"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 26
    if-eqz p3, :cond_1b

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 34
    :goto_1a
    return-void

    .line 32
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_1a
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getL()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_6

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 78
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 83
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 86
    :cond_1a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
