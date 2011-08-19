.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "GeneralNames.java"


# instance fields
.field private final names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 55
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 57
    :cond_21
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 46
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 4
    .parameter "obj"

    .prologue
    .line 17
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_a

    .line 19
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .end local p0
    move-object v0, p0

    .line 24
    :goto_9
    return-object v0

    .line 22
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 27
    .restart local p0
    :cond_16
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
.method public getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 63
    .local v0, tmp:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, sep:Ljava/lang/String;
    const-string v3, "GeneralNames:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-eq v1, v3, :cond_2b

    .line 89
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 93
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
