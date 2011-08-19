.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .registers 3
    .parameter "curve"

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .parameter "curve"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 338
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 7
    .parameter "curve"
    .parameter "x"
    .parameter "y"
    .parameter "withCompression"

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 350
    if-eqz p2, :cond_7

    if-eqz p3, :cond_b

    :cond_7
    if-nez p2, :cond_13

    if-eqz p3, :cond_13

    .line 352
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_13
    if-eqz p2, :cond_29

    .line 358
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 361
    if-eqz p1, :cond_29

    .line 363
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 367
    :cond_29
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 368
    return-void
.end method

.method private static checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_12
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .parameter "b"

    .prologue
    .line 454
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 455
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 11
    .parameter "b"

    .prologue
    .line 469
    move-object v1, p1

    .line 470
    .local v1, other:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v1

    .line 505
    .end local p0
    :goto_8
    return-object v6

    .line 475
    .restart local p0
    :cond_9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v6, p0

    .line 477
    goto :goto_8

    .line 480
    :cond_11
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 481
    .local v2, x2:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 484
    .local v4, y2:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 486
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 489
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object v6, p0

    goto :goto_8

    .line 493
    .restart local p0
    :cond_35
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object v6, p0

    goto :goto_8

    .line 496
    .restart local p0
    :cond_3f
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 499
    .local v0, lambda:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 502
    .local v3, x3:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 505
    .local v5, y3:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v6, v7, v3, v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_8
.end method

.method public getEncoded()[B
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 386
    new-array v4, v7, [B

    .line 427
    :goto_a
    return-object v4

    .line 389
    :cond_b
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v3

    .line 390
    .local v3, byteCount:I
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 393
    .local v1, X:[B
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    if-eqz v4, :cond_62

    .line 396
    add-int/lit8 v4, v3, 0x1

    new-array v0, v4, [B

    .line 398
    .local v0, PO:[B
    const/4 v4, 0x2

    aput-byte v4, v0, v6

    .line 404
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 406
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 410
    const/4 v4, 0x3

    aput-byte v4, v0, v6

    .line 414
    :cond_5d
    invoke-static {v1, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_60
    move-object v4, v0

    .line 427
    goto :goto_a

    .line 418
    .end local v0           #PO:[B
    :cond_62
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 420
    .local v2, Y:[B
    add-int v4, v3, v3

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 422
    .restart local v0       #PO:[B
    const/4 v4, 0x4

    aput-byte v4, v0, v6

    .line 423
    invoke-static {v1, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_60
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .prologue
    .line 572
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .parameter "b"

    .prologue
    .line 513
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 514
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 3
    .parameter "b"

    .prologue
    .line 528
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 534
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    goto :goto_7
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p0

    .line 567
    :goto_7
    return-object v4

    .line 548
    :cond_8
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_1b

    .line 552
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_7

    .line 555
    :cond_1b
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 558
    .local v1, lambda:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 562
    .local v2, x3:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 563
    .local v0, ONE:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 567
    .local v3, y3:Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_7
.end method
