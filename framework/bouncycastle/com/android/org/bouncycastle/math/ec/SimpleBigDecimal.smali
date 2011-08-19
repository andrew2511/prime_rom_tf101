.class Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .registers 3
    .parameter "limBigDec"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 60
    iget v0, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .parameter "bigInt"
    .parameter "scale"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gez p2, :cond_d

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_d
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 55
    return-void
.end method

.method private checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v0, v1, :cond_e

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_e
    return-void
.end method

.method public static getInstance(Ljava/math/BigInteger;I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4
    .parameter "value"
    .parameter "scale"

    .prologue
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "b"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public add(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "b"

    .prologue
    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "newScale"

    .prologue
    .line 74
    if-gez p1, :cond_a

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_14

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 84
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13
.end method

.method public compareTo(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)I
    .registers 4
    .parameter "val"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .parameter "val"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 6
    .parameter "b"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 130
    .local v0, dividend:Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "b"

    .prologue
    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 245
    :goto_5
    return v2

    .line 239
    :cond_6
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    if-nez v2, :cond_c

    move v2, v4

    .line 241
    goto :goto_5

    .line 244
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-object v1, v0

    .line 245
    .local v1, other:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v2, v3, :cond_22

    move v2, v5

    goto :goto_5

    :cond_22
    move v2, v4

    goto :goto_5
.end method

.method public floor()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 6
    .parameter "b"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "b"

    .prologue
    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .prologue
    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 161
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 162
    .local v0, oneHalf:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "n"

    .prologue
    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 3
    .parameter "b"

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .parameter "b"

    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, -0x1

    .line 192
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v11, :cond_c

    .line 194
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    .line 229
    :goto_b
    return-object v11

    .line 197
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 199
    .local v0, floorBigInt:Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 200
    .local v1, fract:Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_30

    .line 202
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 205
    :cond_30
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_44

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    .line 207
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 209
    :cond_44
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, leftOfPoint:Ljava/lang/String;
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v2, v11, [C

    .line 212
    .local v2, fractCharArr:[C
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, fractStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 214
    .local v3, fractLen:I
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v10, v11, v3

    .line 215
    .local v10, zeroes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5a
    if-ge v5, v10, :cond_63

    .line 217
    const/16 v11, 0x30

    aput-char v11, v2, v5

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 219
    :cond_63
    const/4 v6, 0x0

    .local v6, j:I
    :goto_64
    if-ge v6, v3, :cond_71

    .line 221
    add-int v11, v10, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v2, v11

    .line 219
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 223
    :cond_71
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    .line 225
    .local v8, rightOfPoint:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 226
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_b
.end method
