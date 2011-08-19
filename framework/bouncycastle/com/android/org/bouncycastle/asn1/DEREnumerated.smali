.class public Lcom/android/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DEREnumerated.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 71
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    .registers 4
    .parameter "obj"

    .prologue
    .line 21
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v0, :cond_a

    .line 23
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .end local p0
    move-object v0, p0

    .line 33
    :goto_9
    return-object v0

    .line 26
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_9

    .line 31
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 33
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    goto :goto_9

    .line 36
    .restart local p0
    :cond_29
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
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 88
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-nez v2, :cond_6

    .line 90
    const/4 v2, 0x0

    .line 95
    :goto_5
    return v2

    .line 93
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-object v1, v0

    .line 95
    .local v1, other:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v3, v1, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    goto :goto_5
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 83
    return-void
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
