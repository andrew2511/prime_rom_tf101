.class public Lcom/android/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERBMPString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "string"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 66
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v2, v0

    if-eq v1, v2, :cond_21

    .line 68
    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 71
    :cond_21
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .registers 4
    .parameter "obj"

    .prologue
    .line 23
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_a

    .line 25
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local p0
    move-object v0, p0

    .line 35
    :goto_9
    return-object v0

    .line 28
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_9

    .line 33
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 35
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-result-object v0

    goto :goto_9

    .line 38
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
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 101
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-nez v2, :cond_6

    .line 103
    const/4 v2, 0x0

    .line 108
    :goto_5
    return v2

    .line 106
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v1, v0

    .line 108
    .local v1, s:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 116
    .local v1, c:[C
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 118
    .local v0, b:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    array-length v3, v1

    if-eq v2, v3, :cond_24

    .line 120
    mul-int/lit8 v3, v2, 0x2

    aget-char v4, v1, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 121
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 124
    :cond_24
    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 125
    return-void
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method
