.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private volatile hash:I

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "field"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 10
    .parameter "field"
    .parameter "a"
    .parameter "b"
    .parameter "seed"

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    .line 61
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    if-nez v2, :cond_12

    .line 62
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "field == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_12
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 65
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    if-nez v2, :cond_20

    .line 66
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "a == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_20
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 69
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    if-nez v2, :cond_2e

    .line 70
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "b == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_2e
    if-nez p4, :cond_59

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 82
    :goto_33
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldFp;

    if-eqz v2, :cond_7f

    .line 83
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    check-cast v2, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    .local v1, p:Ljava/math/BigInteger;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_51

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_67

    .line 85
    :cond_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the a is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v1           #p:Ljava/math/BigInteger;
    :cond_59
    array-length v2, p4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 77
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v3, v3

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 87
    .restart local v1       #p:Ljava/math/BigInteger;
    :cond_67
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_77

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_ab

    .line 88
    :cond_77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the b is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v1           #p:Ljava/math/BigInteger;
    :cond_7f
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_ab

    .line 91
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 92
    .local v0, fieldSizeInBits:I
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_9b

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the a is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_9b
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_ab

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the b is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0           #fieldSizeInBits:I
    :cond_ab
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 178
    :goto_5
    return v2

    .line 174
    :cond_6
    instance-of v2, p1, Ljava/security/spec/EllipticCurve;

    if-nez v2, :cond_c

    move v2, v4

    .line 175
    goto :goto_5

    .line 177
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/spec/EllipticCurve;

    move-object v1, v0

    .line 178
    .local v1, otherEc:Ljava/security/spec/EllipticCurve;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->seed:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v5

    goto :goto_5

    :cond_3a
    move v2, v4

    goto :goto_5
.end method

.method public getA()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    return-object v0
.end method

.method public getSeed()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-nez v1, :cond_7

    .line 153
    const/4 v1, 0x0

    .line 158
    :goto_6
    return-object v1

    .line 156
    :cond_7
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 157
    .local v0, ret:[B
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 158
    goto :goto_6
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 190
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    if-nez v2, :cond_3d

    .line 191
    const/16 v0, 0xb

    .line 192
    .local v0, hash0:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit16 v0, v2, 0x155

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 194
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 195
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-eqz v2, :cond_39

    .line 196
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 200
    .end local v1           #i:I
    :cond_39
    mul-int/lit8 v0, v0, 0x1f

    .line 202
    :cond_3b
    iput v0, p0, Ljava/security/spec/EllipticCurve;->hash:I

    .line 204
    .end local v0           #hash0:I
    :cond_3d
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    return v2
.end method
