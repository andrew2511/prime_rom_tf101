.class public Lcom/android/org/bouncycastle/asn1/LazyDERSequence;
.super Lcom/android/org/bouncycastle/asn1/DERSequence;
.source "LazyDERSequence.java"


# instance fields
.field private encoded:[B

.field private parsed:Z

.field private size:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    .line 18
    return-void
.end method

.method private parse()V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    .line 24
    .local v0, en:Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 26
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_7

    .line 29
    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    .line 30
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 74
    return-void
.end method

.method public getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .parameter "index"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-nez v0, :cond_7

    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parse()V

    .line 39
    :cond_7
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-eqz v0, :cond_9

    .line 46
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 49
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    goto :goto_8
.end method

.method public size()I
    .registers 3

    .prologue
    .line 54
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    if-gez v1, :cond_1e

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    .line 58
    .local v0, en:Ljava/util/Enumeration;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 59
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    goto :goto_e

    .line 66
    .end local v0           #en:Ljava/util/Enumeration;
    :cond_1e
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    return v1
.end method
