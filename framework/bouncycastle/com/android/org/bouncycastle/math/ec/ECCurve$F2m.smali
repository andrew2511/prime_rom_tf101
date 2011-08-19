.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private h:Ljava/math/BigInteger;

.field private infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private n:Ljava/math/BigInteger;

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 314
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 315
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "a"
    .parameter "b"
    .parameter "n"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 233
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 350
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 351
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 352
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 353
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 354
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    .line 355
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    .line 357
    if-nez p2, :cond_1f

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1f
    if-nez p3, :cond_2b

    .line 364
    if-eqz p4, :cond_3f

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_2b
    if-gt p3, p2, :cond_35

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_35
    if-gt p4, p3, :cond_3f

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_3f
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 383
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 384
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 385
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 14
    .parameter "m"
    .parameter "k"
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 255
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 256
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .parameter "m"
    .parameter "k"
    .parameter "a"
    .parameter "b"
    .parameter "n"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 283
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 284
    return-void
.end method

.method private decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15
    .parameter "xEnc"
    .parameter "ypBit"

    .prologue
    const/4 v6, 0x1

    .line 513
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 515
    .local v0, xp:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x0

    .line 516
    .local v9, yp:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 518
    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .end local v9           #yp:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    check-cast v9, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 519
    .restart local v9       #yp:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_25
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    sub-int/2addr v1, v6

    if-ge v8, v1, :cond_7d

    .line 521
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 519
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 526
    .end local v8           #i:I
    :cond_31
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 528
    .local v7, beta:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->solveQuadradicEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 529
    .local v10, z:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v10, :cond_57

    .line 531
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid point compression"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_57
    const/4 v11, 0x0

    .line 534
    .local v11, zBit:I
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 536
    const/4 v11, 0x1

    .line 538
    :cond_64
    if-eq v11, p2, :cond_79

    .line 540
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v10, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 543
    :cond_79
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 546
    .end local v7           #beta:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10           #z:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11           #zBit:I
    :cond_7d
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v1, p0, v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
.end method

.method private solveQuadradicEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 16
    .parameter "beta"

    .prologue
    .line 560
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 563
    .local v0, zeroElement:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v2, v0

    .line 592
    :goto_1c
    return-object v2

    .line 568
    :cond_1d
    const/4 v12, 0x0

    .line 569
    .local v12, z:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v7, v0

    .line 571
    .local v7, gamma:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 574
    .local v9, rand:Ljava/util/Random;
    :cond_24
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    iget v13, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v6, v13, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 576
    .local v1, t:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v12, v0

    .line 577
    move-object v10, p1

    .line 578
    .local v10, w:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_3b
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v8, v2, :cond_58

    .line 580
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 581
    .local v11, w2:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 582
    invoke-virtual {v11, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 578
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 584
    .end local v11           #w2:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_58
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 586
    const/4 v2, 0x0

    goto :goto_1c

    .line 588
    :cond_66
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 590
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object v2, v12

    .line 592
    goto :goto_1c
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "withCompression"

    .prologue
    .line 399
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15
    .parameter "encoded"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 407
    const/4 v8, 0x0

    .line 409
    .local v8, p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aget-byte v0, p1, v11

    packed-switch v0, :pswitch_data_86

    .line 448
    :pswitch_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid point encoding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 451
    :goto_2d
    return-object v8

    .line 418
    :pswitch_2e
    array-length v0, p1

    sub-int/2addr v0, v12

    new-array v7, v0, [B

    .line 419
    .local v7, enc:[B
    array-length v0, v7

    invoke-static {p1, v12, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    aget-byte v0, p1, v11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 422
    invoke-direct {p0, v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_2d

    .line 426
    :cond_40
    invoke-direct {p0, v7, v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 428
    goto :goto_2d

    .line 434
    .end local v7           #enc:[B
    :pswitch_45
    array-length v0, p1

    sub-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .line 435
    .local v9, xEnc:[B
    array-length v0, p1

    sub-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x2

    new-array v10, v0, [B

    .line 437
    .local v10, yEnc:[B
    array-length v0, v9

    invoke-static {p1, v12, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    array-length v0, v9

    add-int/lit8 v0, v0, 0x1

    array-length v1, v10

    invoke-static {p1, v0, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .end local v8           #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v12, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v12, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {v8, p0, v0, v1, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 445
    .restart local v8       #p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2d

    .line 409
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_29
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_45
        :pswitch_8
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "anObject"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 610
    :goto_5
    return v2

    .line 603
    :cond_6
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-nez v2, :cond_c

    move v2, v4

    .line 605
    goto :goto_5

    .line 608
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    move-object v1, v0

    .line 610
    .local v1, other:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-ne v2, v3, :cond_3e

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    if-ne v2, v3, :cond_3e

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-ne v2, v3, :cond_3e

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v5

    goto :goto_5

    :cond_3e
    move v2, v4

    goto :goto_5
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .parameter "x"

    .prologue
    .line 394
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    .prologue
    .line 642
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 622
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .registers 2

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_b

    .line 481
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 483
    :cond_b
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 479
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_b

    .line 495
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 497
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 493
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isKoblitz()Z
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_24
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isTrinomial()Z
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
