.class Lcom/android/org/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->max:I

    if-ne v1, v2, :cond_8

    .line 158
    const/4 v1, 0x0

    .line 171
    :goto_7
    return-object v1

    .line 161
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 162
    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1f

    .line 164
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    goto :goto_7

    .line 166
    .restart local v0       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_1f
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2a

    .line 168
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    goto :goto_7

    .restart local v0       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_2a
    move-object v1, v0

    .line 171
    goto :goto_7
.end method
