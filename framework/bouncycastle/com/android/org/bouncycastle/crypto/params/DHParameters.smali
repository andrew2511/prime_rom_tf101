.class public Lcom/android/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final DEFAULT_MINIMUM_LENGTH:I = 0xa0


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "p"
    .parameter "g"

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "p"
    .parameter "g"
    .parameter "q"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "l"

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-static {p4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .registers 14
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "m"
    .parameter "l"

    .prologue
    const/4 v6, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 10
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "m"
    .parameter "l"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p5, :cond_1d

    .line 87
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt p5, v0, :cond_13

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it must be less than bitlength(p)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_13
    if-ge p5, p4, :cond_1d

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1d
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 99
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 100
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    .line 101
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    .line 102
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 103
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 14
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 73
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 74
    return-void
.end method

.method private static getDefaultMParam(I)I
    .registers 2
    .parameter "lParam"

    .prologue
    const/16 v0, 0xa0

    .line 24
    if-nez p0, :cond_5

    .line 29
    :cond_4
    :goto_4
    return v0

    :cond_5
    if-ge p0, v0, :cond_4

    move v0, p0

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 159
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_7

    move v2, v4

    .line 181
    :goto_6
    return v2

    .line 164
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-object v1, v0

    .line 166
    .local v1, pm:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move v2, v4

    .line 170
    goto :goto_6

    .line 175
    :cond_21
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_29

    move v2, v4

    .line 177
    goto :goto_6

    .line 181
    :cond_29
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_6

    :cond_43
    move v2, v4

    goto :goto_6
.end method

.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getJ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    :goto_1f
    xor-int/2addr v0, v1

    return v0

    :cond_21
    const/4 v1, 0x0

    goto :goto_1f
.end method
