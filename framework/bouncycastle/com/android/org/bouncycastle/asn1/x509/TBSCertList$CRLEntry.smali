.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CRLEntry"
.end annotation


# instance fields
.field crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

.field revocationDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

.field userCertificate:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter
    .parameter "seq"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->this$0:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 50
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_30

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_30
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 59
    return-void
.end method


# virtual methods
.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .line 78
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getUserCertificate()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
