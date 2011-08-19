.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Object;
.super Lcom/android/org/bouncycastle/asn1/DERObject;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERObject;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 20
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    return-object p0
.end method


# virtual methods
.method abstract asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    .line 25
    if-ne p0, p1, :cond_5

    move v0, v1

    .line 30
    .end local p1
    :goto_4
    return v0

    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public abstract hashCode()I
.end method
