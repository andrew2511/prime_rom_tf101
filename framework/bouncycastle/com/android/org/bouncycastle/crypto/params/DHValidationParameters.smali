.class public Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 3
    .parameter "seed"
    .parameter "counter"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    .line 15
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 31
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v2, :cond_7

    move v2, v4

    .line 43
    :goto_6
    return v2

    .line 36
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    move-object v1, v0

    .line 38
    .local v1, other:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    iget v2, v1, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-eq v2, v3, :cond_13

    move v2, v4

    .line 40
    goto :goto_6

    .line 43
    :cond_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v3, v1, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    goto :goto_6
.end method

.method public getCounter()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
