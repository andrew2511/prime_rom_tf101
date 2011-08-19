.class Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field final synthetic val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->max:I

    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->val$outer:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

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
    .line 115
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->index:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->max:I

    if-ne v1, v2, :cond_8

    .line 117
    const/4 v1, 0x0

    .line 130
    :goto_7
    return-object v1

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;->index:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 121
    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1f

    .line 123
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    goto :goto_7

    .line 125
    .restart local v0       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_1f
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2a

    .line 127
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    goto :goto_7

    .restart local v0       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_2a
    move-object v1, v0

    .line 130
    goto :goto_7
.end method
