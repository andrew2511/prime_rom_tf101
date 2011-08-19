.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$1;,
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field version:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_11

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_2e

    .line 159
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_2e
    const/4 v0, 0x0

    .line 164
    .local v0, seqPos:I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 166
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_c8

    .line 168
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .local v1, seqPos:I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    move v0, v1

    .line 175
    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    :goto_46
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 176
    add-int/lit8 v0, v1, 0x1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 177
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 179
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_d2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-nez v2, :cond_88

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v2, :cond_88

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_d2

    .line 184
    :cond_88
    add-int/lit8 v0, v1, 0x1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 187
    :goto_94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_af

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-nez v2, :cond_af

    .line 190
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move v0, v1

    .line 193
    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    :cond_af
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_c7

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v2, :cond_c7

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .line 198
    :cond_c7
    return-void

    .line 172
    :cond_c8
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto/16 :goto_46

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    :cond_d2
    move v0, v1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    goto :goto_94
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 4
    .parameter "obj"

    .prologue
    .line 142
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_8

    .line 144
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    .end local p0
    move-object v0, p0

    .line 148
    :goto_7
    return-object v0

    .line 146
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 148
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 151
    .restart local p0
    :cond_14
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
.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_b

    .line 251
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$1;)V

    .line 254
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    goto :goto_a
.end method

.method public getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 5

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_8

    .line 234
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 244
    :goto_7
    return-object v2

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 239
    .local v0, entries:[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 241
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    aput-object v2, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    move-object v2, v0

    .line 244
    goto :goto_7
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
