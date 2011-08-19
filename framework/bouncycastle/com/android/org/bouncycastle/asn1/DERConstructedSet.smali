.class public Lcom/android/org/bouncycastle/asn1/DERConstructedSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERConstructedSet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 37
    :cond_14
    return-void
.end method


# virtual methods
.method public addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 43
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
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v2, dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 66
    .local v3, e:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 68
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 70
    .local v4, obj:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    .line 73
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 77
    .local v1, bytes:[B
    const/16 v5, 0x31

    invoke-virtual {p1, v5, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 78
    return-void
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;->size()I

    move-result v0

    return v0
.end method
