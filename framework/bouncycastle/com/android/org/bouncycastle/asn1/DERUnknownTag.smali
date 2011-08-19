.class public Lcom/android/org/bouncycastle/asn1/DERUnknownTag;
.super Lcom/android/org/bouncycastle/asn1/DERObject;
.source "DERUnknownTag.java"


# instance fields
.field private data:[B

.field private isConstructed:Z

.field private tag:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 4
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    .line 26
    return-void
.end method

.method public constructor <init>(ZI[B)V
    .registers 4
    .parameter "isConstructed"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERObject;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    .line 34
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    .line 35
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    .line 36
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
    .line 57
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    :goto_6
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 58
    return-void

    .line 57
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 63
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    if-nez v2, :cond_7

    move v2, v4

    .line 70
    :goto_6
    return v2

    .line 68
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    move-object v1, v0

    .line 70
    .local v1, other:Lcom/android/org/bouncycastle/asn1/DERUnknownTag;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    iget-boolean v3, v1, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-ne v2, v3, :cond_23

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget v3, v1, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    iget-object v3, v1, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_6

    :cond_23
    move v2, v4

    goto :goto_6
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_5
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    return v0
.end method
