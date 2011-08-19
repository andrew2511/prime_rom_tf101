.class Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger; = null

.field private static final MINUS_THREE:Ljava/math/BigInteger; = null

.field private static final MINUS_TWO:Ljava/math/BigInteger; = null

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_fc

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_10e

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_114

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    .line 51
    :array_fc
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_102
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_108
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 70
    :array_10e
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_114
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_11a
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 15
    .parameter "k"
    .parameter "s"
    .parameter "vm"
    .parameter "a"
    .parameter "m"
    .parameter "c"

    .prologue
    .line 286
    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    .line 287
    .local v0, _k:I
    sub-int v7, p4, v0

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    .local v6, ns:Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    .local v1, gs:Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 293
    .local v3, hs:Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 295
    .local v4, js:Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    .local v2, gsPlusJs:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 297
    .local v5, ls:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 300
    sget-object v7, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 303
    :cond_35
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 12
    .parameter "mu"
    .parameter "k"
    .parameter "doV"

    .prologue
    const/4 v8, 0x1

    .line 453
    if-eq p0, v8, :cond_e

    const/4 v6, -0x1

    if-eq p0, v6, :cond_e

    .line 455
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_e
    if-eqz p2, :cond_2b

    .line 464
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 465
    .local v3, u0:Ljava/math/BigInteger;
    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 473
    .local v4, u1:Ljava/math/BigInteger;
    :goto_17
    const/4 v0, 0x1

    .local v0, i:I
    :goto_18
    if-ge v0, p1, :cond_35

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, s:Ljava/math/BigInteger;
    if-ne p0, v8, :cond_30

    .line 479
    move-object v2, v4

    .line 487
    :goto_1e
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 488
    .local v5, u2:Ljava/math/BigInteger;
    move-object v3, v4

    .line 489
    move-object v4, v5

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 469
    .end local v0           #i:I
    .end local v2           #s:Ljava/math/BigInteger;
    .end local v3           #u0:Ljava/math/BigInteger;
    .end local v4           #u1:Ljava/math/BigInteger;
    .end local v5           #u2:Ljava/math/BigInteger;
    :cond_2b
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 470
    .restart local v3       #u0:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .restart local v4       #u1:Ljava/math/BigInteger;
    goto :goto_17

    .line 484
    .restart local v0       #i:I
    .restart local v2       #s:Ljava/math/BigInteger;
    :cond_30
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1e

    .line 494
    .end local v2           #s:Ljava/math/BigInteger;
    :cond_35
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v4, v1, v8

    .line 495
    .local v1, retVal:[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B
    .registers 5
    .parameter "curve"

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 421
    .local v0, a:Ljava/math/BigInteger;
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 423
    const/4 v1, -0x1

    .line 434
    .local v1, mu:B
    :goto_11
    return v1

    .line 425
    .end local v1           #mu:B
    :cond_12
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 427
    const/4 v1, 0x1

    .restart local v1       #mu:B
    goto :goto_11

    .line 431
    .end local v1           #mu:B
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 7
    .parameter "p"
    .parameter "a"

    .prologue
    .line 823
    const/16 v4, 0x10

    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 824
    .local v3, pu:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    const/4 v4, 0x1

    aput-object p0, v3, v4

    .line 826
    if-nez p1, :cond_1a

    .line 828
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 836
    .local v0, alphaTnaf:[[B
    :goto_b
    array-length v2, v0

    .line 837
    .local v2, precompLen:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_d
    if-ge v1, v2, :cond_1d

    .line 839
    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    aput-object v4, v3, v1

    .line 837
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 833
    .end local v0           #alphaTnaf:[[B
    .end local v1           #i:I
    .end local v2           #precompLen:I
    :cond_1a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .restart local v0       #alphaTnaf:[[B
    goto :goto_b

    .line 842
    .restart local v1       #i:I
    .restart local v2       #precompLen:I
    :cond_1d
    return-object v3
.end method

.method public static getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .registers 15
    .parameter "curve"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v9

    if-nez v9, :cond_11

    .line 546
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "si is defined for Koblitz curves only"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 549
    :cond_11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v5

    .line 550
    .local v5, m:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 551
    .local v0, a:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v6

    .line 552
    .local v6, mu:B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 553
    .local v3, h:I
    add-int/lit8 v9, v5, 0x3

    sub-int v4, v9, v0

    .line 554
    .local v4, index:I
    invoke-static {v6, v4, v12}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v8

    .line 558
    .local v8, ui:[Ljava/math/BigInteger;
    if-ne v6, v11, :cond_5c

    .line 560
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 561
    .local v1, dividend0:Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 573
    .local v2, dividend1:Ljava/math/BigInteger;
    :goto_47
    new-array v7, v13, [Ljava/math/BigInteger;

    .line 575
    .local v7, si:[Ljava/math/BigInteger;
    if-ne v3, v13, :cond_78

    .line 577
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 578
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    .line 590
    :goto_5b
    return-object v7

    .line 563
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    .end local v7           #si:[Ljava/math/BigInteger;
    :cond_5c
    const/4 v9, -0x1

    if-ne v6, v9, :cond_70

    .line 565
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 566
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #dividend1:Ljava/math/BigInteger;
    goto :goto_47

    .line 570
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    :cond_70
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mu must be 1 or -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 580
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    .restart local v2       #dividend1:Ljava/math/BigInteger;
    .restart local v7       #si:[Ljava/math/BigInteger;
    :cond_78
    const/4 v9, 0x4

    if-ne v3, v9, :cond_8c

    .line 582
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 583
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    goto :goto_5b

    .line 587
    :cond_8c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "h (Cofactor) must be 2 or 4"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .registers 9
    .parameter "mu"
    .parameter "w"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    const/4 v4, 0x4

    if-ne p1, v4, :cond_15

    .line 510
    if-ne p0, v6, :cond_e

    .line 512
    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 530
    :goto_d
    return-object v4

    .line 517
    :cond_e
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_d

    .line 523
    :cond_15
    invoke-static {p0, p1, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    .line 524
    .local v3, us:[Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 525
    .local v1, twoToW:Ljava/math/BigInteger;
    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 527
    .local v2, u1invert:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .local v0, tw:Ljava/math/BigInteger;
    move-object v4, v0

    .line 530
    goto :goto_d
.end method

.method public static multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 8
    .parameter "p"
    .parameter "u"

    .prologue
    const/4 v5, 0x1

    .line 692
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 693
    .local v0, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 694
    .local v2, q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v3, p1

    sub-int v1, v3, v5

    .local v1, i:I
    :goto_10
    if-ltz v1, :cond_2b

    .line 696
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 697
    aget-byte v3, p1, v1

    if-ne v3, v5, :cond_21

    .line 699
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 694
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 701
    :cond_21
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 703
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto :goto_1e

    .line 706
    :cond_2b
    return-object v2
.end method

.method public static multiplyRTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 10
    .parameter "p"
    .parameter "k"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 652
    .local v6, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 653
    .local v1, m:I
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v2, v0

    .line 654
    .local v2, a:B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 655
    .local v4, mu:B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 656
    .local v3, s:[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 658
    .local v7, rho:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 6
    .parameter "p"
    .parameter "lambda"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 673
    .local v0, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v1

    .line 674
    .local v1, mu:B
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 676
    .local v3, u:[B
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 678
    .local v2, q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    return-object v2
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 9
    .parameter "mu"
    .parameter "u"
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 132
    .local v1, s1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 135
    .local v2, s2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 137
    .local v3, s3:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v5, :cond_1c

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 150
    .local v0, norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1b
    return-object v0

    .line 141
    .end local v0           #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1c
    const/4 v4, -0x1

    if-ne p0, v4, :cond_28

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .restart local v0       #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1b

    .line 147
    .end local v0           #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 9
    .parameter "mu"
    .parameter "lambda"

    .prologue
    const/4 v6, 0x1

    .line 87
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, s1:Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, s2:Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 95
    .local v3, s3:Ljava/math/BigInteger;
    if-ne p0, v6, :cond_28

    .line 97
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    .local v0, norm:Ljava/math/BigInteger;
    :goto_27
    return-object v0

    .line 99
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_28
    const/4 v4, -0x1

    if-ne p0, v4, :cond_34

    .line 101
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0       #norm:Ljava/math/BigInteger;
    goto :goto_27

    .line 105
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 14
    .parameter "k"
    .parameter "m"
    .parameter "a"
    .parameter "s"
    .parameter "mu"
    .parameter "c"

    .prologue
    .line 611
    const/4 v0, 0x1

    if-ne p4, v0, :cond_6d

    .line 613
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .local v0, d0:Ljava/math/BigInteger;
    move-object v6, v0

    .line 620
    .end local v0           #d0:Ljava/math/BigInteger;
    .local v6, d0:Ljava/math/BigInteger;
    :goto_e
    const/4 v0, 0x1

    invoke-static {p4, p1, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    .line 621
    .local v0, v:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 623
    .local v2, vm:Ljava/math/BigInteger;
    const/4 v0, 0x0

    aget-object v1, p3, v0

    .end local v0           #v:[Ljava/math/BigInteger;
    move-object v0, p0

    move v3, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v7

    .line 626
    .local v7, lambda0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 629
    .local p1, lambda1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-static {v7, p1, p4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object p1

    .line 632
    .local p1, q:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    iget-object p2, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .end local p2
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0
    const-wide/16 p4, 0x2

    invoke-static {p4, p5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local p4
    move-result-object p2

    const/4 p4, 0x1

    aget-object p4, p3, p4

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object p4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 636
    .local p0, r0:Ljava/math/BigInteger;
    const/4 p2, 0x1

    aget-object p2, p3, p2

    iget-object p4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const/4 p4, 0x0

    aget-object p3, p3, p4

    .end local p3
    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .end local p1           #q:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 638
    .local p1, r1:Ljava/math/BigInteger;
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 617
    .end local v2           #vm:Ljava/math/BigInteger;
    .end local v6           #d0:Ljava/math/BigInteger;
    .end local v7           #lambda0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local p0, k:Ljava/math/BigInteger;
    .local p1, m:I
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_6d
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .local v0, d0:Ljava/math/BigInteger;
    move-object v6, v0

    .end local v0           #d0:Ljava/math/BigInteger;
    .restart local v6       #d0:Ljava/math/BigInteger;
    goto :goto_e
.end method

.method public static round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 9
    .parameter "lambda0"
    .parameter "lambda1"
    .parameter "mu"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    .line 170
    .local v0, scale:I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "lambda0 and lambda1 do not have same scale"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    .restart local p0
    .restart local p1
    :cond_12
    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    .end local v0           #scale:I
    const/4 v0, -0x1

    if-eq p2, v0, :cond_20

    .line 178
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "mu must be 1 or -1"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    .restart local p0
    .restart local p1
    :cond_20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v2

    .line 182
    .local v2, f0:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 184
    .local v3, f1:Ljava/math/BigInteger;
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 185
    .local v1, eta0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 188
    .local p1, eta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v1, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 189
    .local p0, eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_92

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    move-object v0, p0

    .line 201
    .end local p0           #eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local v0, eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_3c
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 202
    .local p0, threeEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 205
    .local p1, fourEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v4, 0x1

    if-ne p2, v4, :cond_98

    .line 207
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 208
    .local p0, check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 217
    .local p1, check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_53
    const/4 v1, 0x0

    .line 218
    .local v1, h0:B
    const/4 v4, 0x0

    .line 221
    .local v4, h1:B
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_a3

    .line 223
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_a1

    .line 225
    move v4, p2

    .line 242
    :cond_66
    :goto_66
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .end local v0           #eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-gez v0, :cond_b0

    .line 244
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .end local p1           #check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    .end local p0           #check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ltz p0, :cond_ad

    .line 246
    neg-int p0, p2

    int-to-byte p0, p0

    .end local v4           #h1:B
    .local p0, h1:B
    move p1, p0

    .end local p0           #h1:B
    .local p1, h1:B
    move p0, v1

    .line 262
    .end local v1           #h0:B
    .local p0, h0:B
    :goto_7a
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #h0:B
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 263
    .local p0, q0:Ljava/math/BigInteger;
    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local p1           #h1:B
    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 264
    .local p1, q1:Ljava/math/BigInteger;
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .end local p2
    invoke-direct {p2, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 196
    .local v1, eta0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local p0, eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local p1, eta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local p2
    :cond_92
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    move-object v0, p0

    .end local p0           #eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v0       #eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_3c

    .line 213
    .local p0, threeEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local p1, fourEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_98
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 214
    .local p0, check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .local p1, check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_53

    .line 229
    .local v1, h0:B
    .restart local v4       #h1:B
    :cond_a1
    const/4 v1, 0x1

    goto :goto_66

    .line 235
    :cond_a3
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_66

    .line 237
    move v4, p2

    goto :goto_66

    .line 250
    .end local v0           #eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local p0           #check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local p1           #check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_ad
    const/4 p0, -0x1

    .end local v1           #h0:B
    .local p0, h0:B
    move p1, v4

    .end local v4           #h1:B
    .local p1, h1:B
    goto :goto_7a

    .line 256
    .restart local v1       #h0:B
    .restart local v4       #h1:B
    .local p0, check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local p1, check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_b0
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .end local p0           #check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_bd

    .line 258
    neg-int p0, p2

    int-to-byte p0, p0

    .end local v4           #h1:B
    .local p0, h1:B
    move p1, p0

    .end local p0           #h1:B
    .local p1, h1:B
    move p0, v1

    .end local v1           #h0:B
    .local p0, h0:B
    goto :goto_7a

    .end local p0           #h0:B
    .restart local v1       #h0:B
    .restart local v4       #h1:B
    .local p1, check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_bd
    move p1, v4

    .end local v4           #h1:B
    .local p1, h1:B
    move p0, v1

    .end local v1           #h0:B
    .restart local p0       #h0:B
    goto :goto_7a
.end method

.method public static tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 8
    .parameter "p"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p0

    .line 403
    :goto_7
    return-object v2

    .line 400
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 401
    .local v0, x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 403
    .local v1, y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isCompressed()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_7
.end method

.method public static tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 9
    .parameter "mu"
    .parameter "lambda"

    .prologue
    .line 316
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    .line 318
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "mu must be 1 or -1"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    .restart local p0
    .restart local p1
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v0

    .line 324
    .local v0, norm:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 327
    .local v0, log2Norm:I
    const/16 v1, 0x1e

    if-le v0, v1, :cond_81

    add-int/lit8 v0, v0, 0x4

    .line 330
    .local v0, maxLength:I
    :goto_1c
    new-array v4, v0, [B

    .line 331
    .local v4, u:[B
    const/4 v0, 0x0

    .line 334
    .local v0, i:I
    const/4 v1, 0x0

    .line 336
    .local v1, length:I
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 337
    .local v2, r0:Ljava/math/BigInteger;
    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .local p1, r1:Ljava/math/BigInteger;
    move-object v6, p1

    .end local p1           #r1:Ljava/math/BigInteger;
    .local v6, r1:Ljava/math/BigInteger;
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    move v0, v1

    .end local v1           #length:I
    .local v0, length:I
    move-object v1, v2

    .end local v2           #r0:Ljava/math/BigInteger;
    .local v1, r0:Ljava/math/BigInteger;
    move-object v2, v6

    .line 339
    .end local v6           #r1:Ljava/math/BigInteger;
    .local v2, r1:Ljava/math/BigInteger;
    :goto_29
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 342
    :cond_39
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 344
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .end local v0           #length:I
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v4, p1

    .line 347
    aget-byte v0, v4, p1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_84

    .line 349
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .end local v1           #r0:Ljava/math/BigInteger;
    .local v0, r0:Ljava/math/BigInteger;
    move-object v1, v0

    .line 356
    .end local v0           #r0:Ljava/math/BigInteger;
    .restart local v1       #r0:Ljava/math/BigInteger;
    :goto_67
    move v0, p1

    .line 363
    .local v0, length:I
    :goto_68
    move-object v3, v1

    .line 364
    .local v3, t:Ljava/math/BigInteger;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 365
    .local v1, s:Ljava/math/BigInteger;
    const/4 v5, 0x1

    if-ne p0, v5, :cond_90

    .line 367
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 375
    .local v1, r0:Ljava/math/BigInteger;
    :goto_75
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .end local v2           #r1:Ljava/math/BigInteger;
    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .line 376
    .restart local v2       #r1:Ljava/math/BigInteger;
    add-int/lit8 p1, p1, 0x1

    .line 377
    goto :goto_29

    .line 327
    .end local v1           #r0:Ljava/math/BigInteger;
    .end local v2           #r1:Ljava/math/BigInteger;
    .end local v3           #t:Ljava/math/BigInteger;
    .end local v4           #u:[B
    .local v0, log2Norm:I
    .local p1, lambda:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    :cond_81
    const/16 v0, 0x22

    goto :goto_1c

    .line 354
    .end local v0           #log2Norm:I
    .restart local v1       #r0:Ljava/math/BigInteger;
    .restart local v2       #r1:Ljava/math/BigInteger;
    .restart local v4       #u:[B
    .local p1, i:I
    :cond_84
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .end local v1           #r0:Ljava/math/BigInteger;
    .local v0, r0:Ljava/math/BigInteger;
    move-object v1, v0

    .end local v0           #r0:Ljava/math/BigInteger;
    .restart local v1       #r0:Ljava/math/BigInteger;
    goto :goto_67

    .line 360
    .local v0, length:I
    :cond_8c
    const/4 v3, 0x0

    aput-byte v3, v4, p1

    goto :goto_68

    .line 372
    .local v1, s:Ljava/math/BigInteger;
    .restart local v3       #t:Ljava/math/BigInteger;
    :cond_90
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .local v1, r0:Ljava/math/BigInteger;
    goto :goto_75

    .line 379
    .end local v3           #t:Ljava/math/BigInteger;
    :cond_95
    add-int/lit8 p0, v0, 0x1

    .line 382
    .end local v0           #length:I
    .local p0, length:I
    new-array p1, p0, [B

    .line 383
    .local p1, tnaf:[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v4, v0, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    .end local v1           #r0:Ljava/math/BigInteger;
    return-object p1
.end method

.method public static tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 11
    .parameter "mu"
    .parameter "lambda"
    .parameter "width"
    .parameter "pow2w"
    .parameter "tw"
    .parameter "alpha"

    .prologue
    .line 726
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    .line 728
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "mu must be 1 or -1"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 731
    .restart local p0
    .restart local p1
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v0

    .line 734
    .local v0, norm:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 737
    .local v0, log2Norm:I
    const/16 v1, 0x1e

    if-le v0, v1, :cond_8f

    add-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 740
    .end local v0           #log2Norm:I
    .local p2, maxLength:I
    :goto_1d
    new-array v3, p2, [B

    .line 743
    .local v3, u:[B
    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .end local p2           #maxLength:I
    move-result-object p2

    .line 746
    .local p2, pow2wMin1:Ljava/math/BigInteger;
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 747
    .local v0, r0:Ljava/math/BigInteger;
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 748
    .local v1, r1:Ljava/math/BigInteger;
    const/4 p1, 0x0

    .line 751
    .local p1, i:I
    :goto_29
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 754
    :cond_39
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 757
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 762
    .local v2, uUnMod:Ljava/math/BigInteger;
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_92

    .line 764
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .end local v2           #uUnMod:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-byte v2, v2

    .local v2, uLocal:B
    move v4, v2

    .line 772
    .end local v2           #uLocal:B
    .local v4, uLocal:B
    :goto_5c
    aput-byte v4, v3, p1

    .line 773
    const/4 v2, 0x1

    .line 774
    .local v2, s:Z
    if-gez v4, :cond_64

    .line 776
    const/4 v2, 0x0

    .line 777
    neg-int v4, v4

    int-to-byte v4, v4

    .line 781
    :cond_64
    if-eqz v2, :cond_99

    .line 783
    aget-object v2, p5, v4

    .end local v2           #s:Z
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 784
    aget-object v2, p5, v4

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 797
    .end local v4           #uLocal:B
    :goto_76
    move-object v2, v0

    .line 799
    .local v2, t:Ljava/math/BigInteger;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_ae

    .line 801
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .end local v0           #r0:Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 808
    .restart local v0       #r0:Ljava/math/BigInteger;
    :goto_83
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .end local v1           #r1:Ljava/math/BigInteger;
    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .line 809
    .restart local v1       #r1:Ljava/math/BigInteger;
    add-int/lit8 p1, p1, 0x1

    .line 810
    goto :goto_29

    .line 737
    .end local v1           #r1:Ljava/math/BigInteger;
    .end local v2           #t:Ljava/math/BigInteger;
    .end local v3           #u:[B
    .local v0, log2Norm:I
    .local p1, lambda:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .local p2, width:B
    :cond_8f
    add-int/lit8 p2, p2, 0x22

    goto :goto_1d

    .line 768
    .local v0, r0:Ljava/math/BigInteger;
    .restart local v1       #r1:Ljava/math/BigInteger;
    .local v2, uUnMod:Ljava/math/BigInteger;
    .restart local v3       #u:[B
    .local p1, i:I
    .local p2, pow2wMin1:Ljava/math/BigInteger;
    :cond_92
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .end local v2           #uUnMod:Ljava/math/BigInteger;
    int-to-byte v2, v2

    .local v2, uLocal:B
    move v4, v2

    .end local v2           #uLocal:B
    .restart local v4       #uLocal:B
    goto :goto_5c

    .line 788
    .local v2, s:Z
    :cond_99
    aget-object v2, p5, v4

    .end local v2           #s:Z
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 789
    aget-object v2, p5, v4

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_76

    .line 794
    .end local v4           #uLocal:B
    :cond_aa
    const/4 v2, 0x0

    aput-byte v2, v3, p1

    goto :goto_76

    .line 806
    .local v2, t:Ljava/math/BigInteger;
    :cond_ae
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .end local v0           #r0:Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0       #r0:Ljava/math/BigInteger;
    goto :goto_83

    .line 811
    .end local v2           #t:Ljava/math/BigInteger;
    :cond_b8
    return-object v3
.end method
