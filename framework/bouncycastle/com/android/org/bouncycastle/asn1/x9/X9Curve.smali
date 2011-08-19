.class public Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X9Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 24
    .parameter "fieldID"
    .parameter "seq"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v10, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v10, v0

    sget-object v11, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    .line 53
    .local v17, p:Ljava/math/BigInteger;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 54
    .local v4, x9A:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 55
    .local v9, x9B:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v10, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    move-object v0, v10

    move-object/from16 v1, v17

    move-object v2, v11

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 96
    .end local v4           #x9A:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v9           #x9B:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v17           #p:Ljava/math/BigInteger;
    :cond_70
    :goto_70
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8a

    .line 98
    const/4 v10, 0x2

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 100
    :cond_8a
    return-void

    .line 59
    .restart local p1
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v10, v0

    sget-object v11, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 63
    .local v18, parameters:Lcom/android/org/bouncycastle/asn1/DERSequence;
    const/4 v10, 0x0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 65
    .local v5, m:I
    const/4 v10, 0x1

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 68
    .local v20, representation:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v6, 0x0

    .line 69
    .local v6, k1:I
    const/4 v7, 0x0

    .line 70
    .local v7, k2:I
    const/4 v8, 0x0

    .line 71
    .local v8, k3:I
    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11c

    .line 74
    const/4 v10, 0x2

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 89
    :goto_da
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 90
    .restart local v4       #x9A:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 92
    .restart local v9       #x9B:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v10, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v16

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-direct/range {v10 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_70

    .line 80
    .end local v4           #x9A:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v9           #x9B:Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    :cond_11c
    const/4 v10, 0x2

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 82
    .local v19, pentanomial:Lcom/android/org/bouncycastle/asn1/DERSequence;
    const/4 v10, 0x0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 84
    const/4 v10, 0x1

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 86
    const/4 v10, 0x2

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    goto/16 :goto_da
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .registers 3
    .parameter "curve"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 32
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .registers 4
    .parameter "curve"
    .parameter "seed"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 43
    return-void
.end method

.method private setFieldIdentifier()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v0, :cond_b

    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 117
    :goto_a
    return-void

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_16

    .line 110
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_a

    .line 114
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 145
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 146
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 154
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_41

    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 159
    :cond_41
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1

    .line 148
    :cond_47
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 150
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 151
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_33
.end method
