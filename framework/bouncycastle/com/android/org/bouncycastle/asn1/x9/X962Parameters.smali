.class public Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 3
    .parameter "namedCurve"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 3
    .parameter "ecParameters"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 42
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 43
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 3
    .parameter "obj"

    .prologue
    .line 19
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_a

    .line 21
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    .end local p0
    move-object v0, p0

    .line 26
    :goto_9
    return-object v0

    .line 24
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_16

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    goto :goto_9

    .line 29
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public isImplicitlyCA()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public isNamedCurve()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method
