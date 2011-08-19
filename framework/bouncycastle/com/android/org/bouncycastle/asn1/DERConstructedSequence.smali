.class public Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DERConstructedSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    return-void
.end method


# virtual methods
.method public addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 17
    return-void
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .local v2, dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 40
    .local v3, e:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 42
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, obj:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    .line 47
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 51
    .local v1, bytes:[B
    const/16 v5, 0x30

    invoke-virtual {p1, v5, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 52
    return-void
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->size()I

    move-result v0

    return v0
.end method
