.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AttCertIssuer.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field choiceObj:Lcom/android/org/bouncycastle/asn1/DERObject;

.field obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .parameter "names"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V
    .registers 5
    .parameter "v2Form"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v2, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 69
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 4
    .parameter "obj"

    .prologue
    .line 20
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_8

    .line 22
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    .end local p0
    move-object v0, p0

    .line 38
    :goto_7
    return-object v0

    .line 24
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_16

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    goto :goto_7

    .line 28
    :cond_16
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_22

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    goto :goto_7

    .line 32
    .restart local p0
    :cond_22
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_33

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    goto :goto_7

    .line 36
    .restart local p0
    :cond_33
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_41

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    goto :goto_7

    .line 41
    :cond_41
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
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method
