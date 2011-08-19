.class public Lcom/android/org/bouncycastle/asn1/DERBoolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

.field public static final TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 91
    if-eqz p1, :cond_9

    const/4 v0, -0x1

    :goto_6
    iput-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    .line 92
    return-void

    .line 91
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .registers 4
    .parameter "obj"

    .prologue
    .line 23
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_a

    .line 25
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p0
    move-object v0, p0

    .line 37
    :goto_9
    return-object v0

    .line 28
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_19

    .line 31
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    goto :goto_9

    .line 35
    .restart local p0
    :cond_19
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_28

    .line 37
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    goto :goto_9

    .line 40
    .restart local p0
    :cond_28
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

.method public static getInstance(Z)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .registers 2
    .parameter "value"

    .prologue
    .line 49
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    goto :goto_4
.end method

.method public static getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .registers 2
    .parameter "octets"

    .prologue
    .line 59
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    goto :goto_7
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-nez v0, :cond_9

    :cond_7
    move v0, v2

    .line 119
    .end local p1
    :goto_8
    return v0

    .restart local p1
    :cond_9
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p1
    iget-byte v1, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    move v0, v2

    goto :goto_8
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 104
    new-array v0, v3, [B

    .line 106
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    aput-byte v2, v0, v1

    .line 108
    invoke-virtual {p1, v3, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 109
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 124
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    return v0
.end method

.method public isTrue()Z
    .registers 2

    .prologue
    .line 97
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_7

    const-string v0, "TRUE"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "FALSE"

    goto :goto_6
.end method
