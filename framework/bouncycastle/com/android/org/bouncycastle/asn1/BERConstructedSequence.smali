.class public Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;
.super Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
.source "BERConstructedSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 18
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_9

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2c

    .line 20
    :cond_9
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 21
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 24
    .local v0, e:Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 26
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_17

    .line 29
    :cond_25
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 30
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 36
    .end local v0           #e:Ljava/util/Enumeration;
    :goto_2b
    return-void

    .line 34
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_2b
.end method
