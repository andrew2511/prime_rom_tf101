.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final cofactor:I

.field private final curve:Ljava/security/spec/EllipticCurve;

.field private final generator:Ljava/security/spec/ECPoint;

.field private final order:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .registers 7
    .parameter "curve"
    .parameter "generator"
    .parameter "order"
    .parameter "cofactor"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    .line 54
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    .line 55
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    .line 56
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    .line 58
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    if-nez v0, :cond_17

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_17
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    if-nez v0, :cond_23

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "generator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_23
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    if-nez v0, :cond_2f

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2f
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_41

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_41
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    if-gtz v0, :cond_4d

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cofactor <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4d
    return-void
.end method


# virtual methods
.method public getCofactor()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    return-object v0
.end method
