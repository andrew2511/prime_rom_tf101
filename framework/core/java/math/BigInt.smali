.class final Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# instance fields
.field transient bignum:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    return-void
.end method

.method private static Check(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 72
    if-nez p0, :cond_19

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(openssl)ERR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1}, Ljava/math/BigInt;->consumeErrors(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 75
    .local v0, cnt:I
    if-lez v0, :cond_19

    .line 76
    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0           #cnt:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_19
    return-void
.end method

.method static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 293
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 294
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_add(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 295
    return-object v0
.end method

.method static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "p"

    .prologue
    .line 323
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 324
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_exp(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 325
    return-object v0
.end method

.method static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 97
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_cmp(II)I

    move-result v0

    return v0
.end method

.method static consumeErrors(Ljava/lang/StringBuilder;)I
    .registers 7
    .parameter "sb"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, cnt:I
    :goto_1
    invoke-static {}, Ljava/math/NativeBN;->ERR_get_error()I

    move-result v1

    .local v1, e:I
    if-eqz v1, :cond_3e

    .line 53
    and-int/lit16 v2, v1, 0xff

    .line 54
    .local v2, reason:I
    const/16 v4, 0x67

    if-ne v2, v4, :cond_15

    .line 55
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "BigInteger division by zero"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_15
    const/16 v4, 0x6c

    if-ne v2, v4, :cond_21

    .line 58
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "BigInteger not invertible"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_21
    const/16 v4, 0x41

    if-ne v2, v4, :cond_2b

    .line 61
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4

    .line 63
    :cond_2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v1}, Ljava/math/NativeBN;->ERR_error_string(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_1

    .line 68
    .end local v2           #reason:I
    .end local v3           #s:Ljava/lang/String;
    :cond_3e
    return v0
.end method

.method static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .registers 8
    .parameter "dividend"
    .parameter "divisor"
    .parameter "quotient"
    .parameter "remainder"

    .prologue
    .line 341
    if-eqz p2, :cond_1a

    .line 342
    invoke-direct {p2}, Ljava/math/BigInt;->makeValid()V

    .line 343
    iget v0, p2, Ljava/math/BigInt;->bignum:I

    .line 347
    .local v0, quot:I
    :goto_7
    if-eqz p3, :cond_1c

    .line 348
    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    .line 349
    iget v1, p3, Ljava/math/BigInt;->bignum:I

    .line 353
    .local v1, rem:I
    :goto_e
    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_div(IIII)Z

    move-result v2

    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    .line 354
    return-void

    .line 345
    .end local v0           #quot:I
    .end local v1           #rem:I
    :cond_1a
    const/4 v0, 0x0

    .restart local v0       #quot:I
    goto :goto_7

    .line 351
    :cond_1c
    const/4 v1, 0x0

    .restart local v1       #rem:I
    goto :goto_e
.end method

.method static exp(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .registers 5
    .parameter "a"
    .parameter "p"

    .prologue
    .line 330
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 331
    .local v0, power:Ljava/math/BigInt;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putLongInt(J)V

    .line 332
    invoke-static {p0, v0}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    return-object v1
.end method

.method static gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 310
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 311
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_gcd(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 312
    return-object v0
.end method

.method static generatePrimeDefault(I)Ljava/math/BigInt;
    .registers 8
    .parameter "bitLength"

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 383
    .local v6, r:Ljava/math/BigInt;
    iget v0, v6, Ljava/math/BigInt;->bignum:I

    move v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_generate_prime_ex(IIZIII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 384
    return-object v6
.end method

.method private invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 5
    .parameter "s"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeValid()V
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-nez v0, :cond_12

    .line 83
    invoke-static {}, Ljava/math/NativeBN;->BN_new()I

    move-result v0

    iput v0, p0, Ljava/math/BigInt;->bignum:I

    .line 84
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 86
    :cond_12
    return-void

    .line 84
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 8
    .parameter "a"
    .parameter "p"
    .parameter "m"

    .prologue
    .line 365
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 366
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    iget v4, p2, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3, v4}, Ljava/math/NativeBN;->BN_mod_exp(IIII)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 370
    return-object v0
.end method

.method static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "m"

    .prologue
    .line 375
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 376
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_mod_inverse(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 377
    return-object v0
.end method

.method static modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "m"

    .prologue
    .line 358
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 359
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_nnmod(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 360
    return-object v0
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 90
    .local v0, bi:Ljava/math/BigInt;
    invoke-static {}, Ljava/math/NativeBN;->BN_new()I

    move-result v1

    iput v1, v0, Ljava/math/BigInt;->bignum:I

    .line 91
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 92
    return-object v0

    .line 91
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method static product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 316
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 317
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_mul(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 318
    return-object v0
.end method

.method static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .registers 4
    .parameter "a"
    .parameter "w"

    .prologue
    .line 287
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, p1}, Ljava/math/NativeBN;->BN_mod_word(II)I

    move-result v0

    .line 288
    .local v0, rem:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 289
    return v0

    .line 288
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .registers 5
    .parameter "a"
    .parameter "n"

    .prologue
    .line 269
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 270
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, p1}, Ljava/math/NativeBN;->BN_shift(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 271
    return-object v0
.end method

.method static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 303
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 304
    .local v0, r:Ljava/math/BigInt;
    iget v1, v0, Ljava/math/BigInt;->bignum:I

    iget v2, p0, Ljava/math/BigInt;->bignum:I

    iget v3, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v1, v2, v3}, Ljava/math/NativeBN;->BN_sub(III)Z

    move-result v1

    invoke-static {v1}, Ljava/math/BigInt;->Check(Z)V

    .line 305
    return-object v0
.end method

.method private static toAscii(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "s"
    .parameter "base"

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 194
    .local v2, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_23

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, ch:C
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 198
    .local v4, value:I
    if-ltz v4, :cond_1d

    const/16 v5, 0x9

    if-gt v4, v5, :cond_1d

    .line 199
    add-int/lit8 v5, v4, 0x30

    int-to-char v0, v5

    .line 201
    :cond_1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 203
    .end local v0           #ch:C
    .end local v4           #value:I
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method add(Ljava/math/BigInt;)V
    .registers 5
    .parameter "a"

    .prologue
    .line 299
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    iget v2, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_add(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 300
    return-void
.end method

.method addPositiveInt(I)V
    .registers 3
    .parameter "w"

    .prologue
    .line 279
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_add_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 280
    return-void
.end method

.method bigEndianMagnitude()[B
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2bin(I)[B

    move-result-object v0

    return-object v0
.end method

.method bitLength()I
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->bitLength(I)I

    move-result v0

    return v0
.end method

.method checkString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "s"
    .parameter "base"

    .prologue
    .line 155
    if-nez p1, :cond_8

    .line 156
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 161
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    .local v1, charCount:I
    const/4 v2, 0x0

    .line 163
    .local v2, i:I
    if-lez v1, :cond_1f

    .line 164
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, ch:C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_28

    .line 167
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    add-int/lit8 v1, v1, -0x1

    .line 173
    .end local v0           #ch:C
    :cond_1f
    :goto_1f
    sub-int v4, v1, v2

    if-nez v4, :cond_2f

    .line 174
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 169
    .restart local v0       #ch:C
    :cond_28
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1f

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 176
    .end local v0           #ch:C
    :cond_2f
    const/4 v3, 0x0

    .line 177
    .local v3, nonAscii:Z
    :goto_30
    if-ge v2, v1, :cond_4a

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .restart local v0       #ch:C
    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_42

    .line 180
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 182
    :cond_42
    const/16 v4, 0x80

    if-le v0, v4, :cond_47

    .line 183
    const/4 v3, 0x1

    .line 177
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 186
    .end local v0           #ch:C
    :cond_4a
    if-eqz v3, :cond_51

    invoke-static {p1, p2}, Ljava/math/BigInt;->toAscii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_50
    return-object v4

    :cond_51
    move-object v4, p1

    goto :goto_50
.end method

.method copy()Ljava/math/BigInt;
    .registers 2

    .prologue
    .line 107
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 108
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    .line 109
    return-object v0
.end method

.method decString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2dec(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    if-eqz v0, :cond_c

    .line 32
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_free(I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInt;->bignum:I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 36
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    return-void

    .line 36
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeBIGNUM()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    return v0
.end method

.method hexString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->BN_bn2hex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBitSet(I)Z
    .registers 3
    .parameter "n"

    .prologue
    .line 264
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_is_bit_set(II)Z

    move-result v0

    return v0
.end method

.method isPrime(I)Z
    .registers 4
    .parameter "certainty"

    .prologue
    .line 388
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljava/math/NativeBN;->BN_is_prime_ex(III)Z

    move-result v0

    return v0
.end method

.method littleEndianIntsMagnitude()[I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->bn2litEndInts(I)[I

    move-result-object v0

    return-object v0
.end method

.method longInt()J
    .registers 3

    .prologue
    .line 223
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->longInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method multiplyByPositiveInt(I)V
    .registers 3
    .parameter "w"

    .prologue
    .line 283
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1}, Ljava/math/NativeBN;->BN_mul_word(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 284
    return-void
.end method

.method putBigEndian([BZ)V
    .registers 5
    .parameter "a"
    .parameter "neg"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 208
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Ljava/math/NativeBN;->BN_bin2bn([BIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 209
    return-void
.end method

.method putBigEndianTwosComplement([B)V
    .registers 4
    .parameter "a"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 218
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, v1}, Ljava/math/NativeBN;->twosComp2bn([BII)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 219
    return-void
.end method

.method putCopy(Ljava/math/BigInt;)V
    .registers 4
    .parameter "from"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 103
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p1, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_copy(II)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 104
    return-void
.end method

.method putDecString(Ljava/lang/String;)V
    .registers 5
    .parameter "original"

    .prologue
    .line 128
    const/16 v2, 0xa

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, s:Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 130
    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v2, v0}, Ljava/math/NativeBN;->BN_dec2bn(ILjava/lang/String;)I

    move-result v1

    .line 131
    .local v1, usedLen:I
    if-lez v1, :cond_20

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 133
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 131
    :cond_20
    const/4 v2, 0x0

    goto :goto_12

    .line 135
    :cond_22
    return-void
.end method

.method putHexString(Ljava/lang/String;)V
    .registers 5
    .parameter "original"

    .prologue
    .line 138
    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, s:Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 140
    iget v2, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v2, v0}, Ljava/math/NativeBN;->BN_hex2bn(ILjava/lang/String;)I

    move-result v1

    .line 141
    .local v1, usedLen:I
    if-lez v1, :cond_20

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/math/BigInt;->Check(Z)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 143
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 141
    :cond_20
    const/4 v2, 0x0

    goto :goto_12

    .line 145
    :cond_22
    return-void
.end method

.method putLittleEndianInts([IZ)V
    .registers 5
    .parameter "a"
    .parameter "neg"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 213
    array-length v0, p1

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {p1, v0, p2, v1}, Ljava/math/NativeBN;->litEndInts2bn([IIZI)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 214
    return-void
.end method

.method putLongInt(J)V
    .registers 4
    .parameter "val"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 115
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2}, Ljava/math/NativeBN;->putLongInt(IJ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 116
    return-void
.end method

.method putULongInt(JZ)V
    .registers 5
    .parameter "val"
    .parameter "neg"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 120
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, p1, p2, p3}, Ljava/math/NativeBN;->putULongInt(IJZ)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 121
    return-void
.end method

.method setSign(I)V
    .registers 4
    .parameter "val"

    .prologue
    .line 247
    if-lez p1, :cond_9

    .line 248
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_set_negative(II)V

    .line 252
    :cond_8
    :goto_8
    return-void

    .line 250
    :cond_9
    if-gez p1, :cond_8

    iget v0, p0, Ljava/math/BigInt;->bignum:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_set_negative(II)V

    goto :goto_8
.end method

.method shift(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 275
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_shift(III)Z

    move-result v0

    invoke-static {v0}, Ljava/math/BigInt;->Check(Z)V

    .line 276
    return-void
.end method

.method sign()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v0}, Ljava/math/NativeBN;->sign(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method twosCompFitsIntoBytes(I)Z
    .registers 4
    .parameter "desiredByteCount"

    .prologue
    .line 255
    iget v1, p0, Ljava/math/BigInt;->bignum:I

    invoke-static {v1}, Ljava/math/NativeBN;->bitLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    .line 256
    .local v0, actualByteCount:I
    if-gt v0, p1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
