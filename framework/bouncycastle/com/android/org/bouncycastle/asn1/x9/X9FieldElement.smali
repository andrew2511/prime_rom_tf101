.class public Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X9FieldElement.java"


# static fields
.field private static converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 12
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "s"

    .prologue
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v5, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 7
    .parameter "p"
    .parameter "s"

    .prologue
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 59
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v0

    .line 60
    .local v0, byteCount:I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 62
    .local v1, paddedBigInteger:[B
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2
.end method
