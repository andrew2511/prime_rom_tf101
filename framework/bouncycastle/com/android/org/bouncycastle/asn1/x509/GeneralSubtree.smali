.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "GeneralSubtree.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

.field private maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :pswitch_33
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 53
    .local v0, o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_96

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :pswitch_5f
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 74
    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_65
    :pswitch_65
    return-void

    .line 59
    .restart local v0       #o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_66
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_65

    .line 67
    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_6d
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 68
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_65

    .line 47
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_33
        :pswitch_6d
    .end packed-switch

    .line 53
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_66
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "base"
    .parameter "minimum"
    .parameter "maximum"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 99
    if-eqz p3, :cond_e

    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 103
    :cond_e
    if-nez p2, :cond_14

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 111
    :goto_13
    return-void

    .line 109
    :cond_14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_13
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 4
    .parameter "o"
    .parameter "explicit"

    .prologue
    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 3
    .parameter "obj"

    .prologue
    .line 128
    if-nez p0, :cond_4

    .line 130
    const/4 v0, 0x0

    .line 138
    .end local p0
    :goto_3
    return-object v0

    .line 133
    .restart local p0
    :cond_4
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_c

    .line 135
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .end local p0
    move-object v0, p0

    goto :goto_3

    .line 138
    .restart local p0
    :cond_c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_3
.end method


# virtual methods
.method public getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getMaximum()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_6

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5
.end method

.method public getMinimum()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_7

    .line 150
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    .line 153
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_6
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 186
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 188
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 190
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 193
    :cond_27
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_36

    .line 195
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 198
    :cond_36
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
