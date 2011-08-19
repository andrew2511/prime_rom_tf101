.class Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CVCDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .registers 7
    .parameter "val"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 315
    .local v0, res:[B
    aget-byte v2, v0, v3

    if-nez v2, :cond_14

    .line 317
    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v1, v2, [B

    .line 319
    .local v1, tmp:[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 324
    .end local v1           #tmp:[B
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v0

    goto :goto_13
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .registers 9
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/math/BigInteger;

    .line 333
    .local v2, sig:[Ljava/math/BigInteger;
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 334
    .local v0, first:[B
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 336
    .local v1, second:[B
    array-length v3, v0

    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v3, v0

    array-length v4, v1

    invoke-static {p1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v5

    .line 340
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v6

    .line 342
    return-object v2
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 9
    .parameter "r"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 292
    .local v0, first:[B
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 295
    .local v2, second:[B
    array-length v3, v0

    array-length v4, v2

    if-le v3, v4, :cond_23

    .line 297
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 304
    .local v1, res:[B
    :goto_12
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-object v1

    .line 301
    .end local v1           #res:[B
    :cond_23
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .restart local v1       #res:[B
    goto :goto_12
.end method
