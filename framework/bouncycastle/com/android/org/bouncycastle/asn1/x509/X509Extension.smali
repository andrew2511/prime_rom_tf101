.class public Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;
.source "X509Extension.java"


# instance fields
.field critical:Z

.field value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBoolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 23
    return-void
.end method

.method public constructor <init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 30
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 31
    return-void
.end method

.method public static convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 5
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 82
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t convert extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 57
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-nez v2, :cond_7

    move v2, v4

    .line 64
    :goto_6
    return v2

    .line 62
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-object v1, v0

    .line 64
    .local v1, other:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v3

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    move v2, v4

    goto :goto_6
.end method

.method public getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    .line 51
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method public isCritical()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    return v0
.end method
