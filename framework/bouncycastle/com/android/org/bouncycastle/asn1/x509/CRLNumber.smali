.class public Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;
.super Lcom/android/org/bouncycastle/asn1/DERInteger;
.source "CRLNumber.java"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "number"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getCRLNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
