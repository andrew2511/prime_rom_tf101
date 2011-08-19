.class public Lcom/android/org/bouncycastle/asn1/DERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;Z)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;Z)V
    .registers 5
    .parameter "v"
    .parameter "needsSorting"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 64
    :cond_14
    if-eqz p2, :cond_19

    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->sort()V

    .line 68
    :cond_19
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v1, p1

    if-eq v0, v1, :cond_f

    .line 46
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 49
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->sort()V

    .line 50
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v2, dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 87
    .local v3, e:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 89
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 91
    .local v4, obj:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    .line 94
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 98
    .local v1, bytes:[B
    const/16 v5, 0x31

    invoke-virtual {p1, v5, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 99
    return-void
.end method
