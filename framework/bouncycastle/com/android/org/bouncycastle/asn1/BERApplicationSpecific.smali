.class public Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .parameter "tagNo"
    .parameter "vec"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 9
    return-void
.end method
