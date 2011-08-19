.class public Lcom/android/org/bouncycastle/asn1/DERGeneralString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERGeneralString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "string"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    array-length v2, p1

    new-array v0, v2, [C

    .line 39
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 41
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 43
    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    .registers 4
    .parameter "obj"

    .prologue
    .line 13
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    if-eqz v0, :cond_a

    .line 15
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    .end local p0
    move-object v0, p0

    .line 23
    :goto_9
    return-object v0

    .line 17
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_9

    .line 21
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 23
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    move-result-object v0

    goto :goto_9

    .line 25
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
    .line 85
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    if-nez v2, :cond_6

    .line 87
    const/4 v2, 0x0

    .line 90
    :goto_5
    return v2

    .line 89
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    move-object v1, v0

    .line 90
    .local v1, s:Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .line 75
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 76
    return-void
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 63
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 64
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 65
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 67
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 69
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method
