.class public Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPointName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final FULL_NAME:I = 0x0

.field public static final NAME_RELATIVE_TO_CRL_ISSUER:I = 0x1


# instance fields
.field name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field type:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 68
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 69
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 102
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v0, :cond_15

    .line 104
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 110
    :goto_14
    return-void

    .line 108
    :cond_15
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_14
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "buf"
    .parameter "sep"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 138
    const-string v0, "    "

    .line 140
    .local v0, indent:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 4
    .parameter "obj"

    .prologue
    .line 40
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_a

    .line 42
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_9
    return-object v0

    .line 44
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_16

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_9

    .line 49
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .prologue
    .line 94
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 114
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 119
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, sep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "DistributionPointName: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_2f

    .line 125
    const-string v2, "fullName"

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_22
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    :cond_2f
    const-string v2, "nameRelativeToCRLIssuer"

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
