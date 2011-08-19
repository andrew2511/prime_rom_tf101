.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

.field q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "q"
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 45
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 47
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "withCompression"

    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16
    .parameter "encoded"

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aget-byte v9, p1, v12

    packed-switch v9, :pswitch_data_ca

    .line 134
    :pswitch_8
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid point encoding 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, p1, v12

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 83
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 137
    :goto_2d
    return-object v4

    .line 88
    :pswitch_2e
    aget-byte v9, p1, v12

    and-int/lit8 v8, v9, 0x1

    .line 89
    .local v8, ytilde:I
    array-length v9, p1

    sub-int/2addr v9, v13

    new-array v3, v9, [B

    .line 91
    .local v3, i:[B
    array-length v9, v3

    invoke-static {p1, v13, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v13, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v5, v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 94
    .local v5, x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 95
    .local v0, alpha:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 101
    .local v1, beta:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v1, :cond_68

    .line 103
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Invalid point compression"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 106
    :cond_68
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_7b

    move v2, v13

    .line 108
    .local v2, bit0:I
    :goto_73
    if-ne v2, v8, :cond_7d

    .line 110
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .end local v4           #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-direct {v4, p0, v5, v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .restart local v4       #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2d

    .end local v2           #bit0:I
    :cond_7b
    move v2, v12

    .line 106
    goto :goto_73

    .line 114
    .restart local v2       #bit0:I
    :cond_7d
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .end local v4           #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, p0, v5, v9, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 117
    .restart local v4       #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2d

    .line 123
    .end local v0           #alpha:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1           #beta:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2           #bit0:I
    .end local v3           #i:[B
    .end local v5           #x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8           #ytilde:I
    :pswitch_94
    array-length v9, p1

    sub-int/2addr v9, v13

    div-int/lit8 v9, v9, 0x2

    new-array v6, v9, [B

    .line 124
    .local v6, xEnc:[B
    array-length v9, p1

    sub-int/2addr v9, v13

    div-int/lit8 v9, v9, 0x2

    new-array v7, v9, [B

    .line 126
    .local v7, yEnc:[B
    array-length v9, v6

    invoke-static {p1, v13, v6, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    array-length v9, v6

    add-int/lit8 v9, v9, 0x1

    array-length v10, v7

    invoke-static {p1, v9, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .end local v4           #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v13, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v9, v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v13, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v10, v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, p0, v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 132
    .restart local v4       #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto/16 :goto_2d

    .line 79
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_29
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_94
        :pswitch_8
        :pswitch_94
        :pswitch_94
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "anObject"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 160
    :goto_5
    return v2

    .line 153
    :cond_6
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-nez v2, :cond_c

    move v2, v4

    .line 155
    goto :goto_5

    .line 158
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object v1, v0

    .line 160
    .local v1, other:Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v5

    goto :goto_5

    :cond_30
    move v2, v4

    goto :goto_5
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .parameter "x"

    .prologue
    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
