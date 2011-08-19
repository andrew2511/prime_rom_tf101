.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 3
    .parameter "isPrivate"
    .parameter "params"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 26
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    if-nez v2, :cond_7

    move v2, v3

    .line 39
    :goto_6
    return v2

    .line 31
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    move-object v1, v0

    .line 33
    .local v1, dhKey:Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_19

    .line 35
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_6

    :cond_17
    move v2, v3

    goto :goto_6

    .line 39
    :cond_19
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    move v0, v1

    .line 47
    .local v0, code:I
    :goto_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_13

    .line 49
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 52
    :cond_13
    return v0

    .line 45
    .end local v0           #code:I
    :cond_14
    const/4 v1, 0x1

    move v0, v1

    goto :goto_8
.end method
