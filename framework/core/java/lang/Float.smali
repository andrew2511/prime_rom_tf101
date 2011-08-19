.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x7f

.field static final EXPONENT_BITS:I = 0x9

.field static final EXPONENT_MASK:I = 0x7f800000

.field static final MANTISSA_BITS:I = 0x17

.field static final MANTISSA_MASK:I = 0x7fffff

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field static final NON_MANTISSA_BITS:I = 0x9

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field static final SIGN_MASK:I = -0x80000000

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .parameter "value"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 130
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 131
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .parameter "value"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 120
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    .line 144
    return-void
.end method

.method public static compare(FF)I
    .registers 8
    .parameter "float1"
    .parameter "float2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 382
    cmpl-float v2, p0, p1

    if-lez v2, :cond_9

    move v2, v5

    .line 408
    :goto_8
    return v2

    .line 385
    :cond_9
    cmpl-float v2, p1, p0

    if-lez v2, :cond_f

    move v2, v3

    .line 386
    goto :goto_8

    .line 388
    :cond_f
    cmpl-float v2, p0, p1

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    cmpl-float v2, v2, p0

    if-eqz v2, :cond_1a

    move v2, v4

    .line 389
    goto :goto_8

    .line 393
    :cond_1a
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 394
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v4

    .line 395
    goto :goto_8

    :cond_28
    move v2, v5

    .line 397
    goto :goto_8

    .line 398
    :cond_2a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_32

    move v2, v3

    .line 399
    goto :goto_8

    .line 403
    :cond_32
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 404
    .local v0, f1:I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 408
    .local v1, f2:I
    shr-int/lit8 v2, v0, 0x1f

    shr-int/lit8 v3, v1, 0x1f

    sub-int/2addr v2, v3

    goto :goto_8
.end method

.method public static native floatToIntBits(F)I
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isInfinite(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 279
    const/high16 v0, 0x7f80

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_c

    const/high16 v0, -0x80

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 302
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p0}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .registers 12
    .parameter "f"

    .prologue
    const/16 v10, 0x30

    .line 435
    cmpl-float v9, p0, p0

    if-eqz v9, :cond_9

    .line 436
    const-string v9, "NaN"

    .line 512
    :goto_8
    return-object v9

    .line 438
    :cond_9
    const/high16 v9, 0x7f80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_12

    .line 439
    const-string v9, "Infinity"

    goto :goto_8

    .line 441
    :cond_12
    const/high16 v9, -0x80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_1b

    .line 442
    const-string v9, "-Infinity"

    goto :goto_8

    .line 445
    :cond_1b
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 447
    .local v0, bitValue:I
    const/high16 v9, -0x8000

    and-int/2addr v9, v0

    if-eqz v9, :cond_3a

    const/4 v9, 0x1

    move v7, v9

    .line 449
    .local v7, negative:Z
    :goto_26
    const/high16 v9, 0x7f80

    and-int/2addr v9, v0

    ushr-int/lit8 v3, v9, 0x17

    .line 452
    .local v3, exponent:I
    const v9, 0x7fffff

    and-int/2addr v9, v0

    shl-int/lit8 v8, v9, 0x1

    .line 454
    .local v8, significand:I
    if-nez v3, :cond_40

    if-nez v8, :cond_40

    .line 455
    if-eqz v7, :cond_3d

    const-string v9, "-0x0.0p0"

    goto :goto_8

    .line 447
    .end local v3           #exponent:I
    .end local v7           #negative:Z
    .end local v8           #significand:I
    :cond_3a
    const/4 v9, 0x0

    move v7, v9

    goto :goto_26

    .line 455
    .restart local v3       #exponent:I
    .restart local v7       #negative:Z
    .restart local v8       #significand:I
    :cond_3d
    const-string v9, "0x0.0p0"

    goto :goto_8

    .line 458
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 459
    .local v6, hexString:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_61

    .line 460
    const-string v9, "-0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_4e
    if-nez v3, :cond_91

    .line 466
    const-string v9, "0."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const/4 v4, 0x6

    .line 471
    .local v4, fractionDigits:I
    :goto_56
    if-eqz v8, :cond_67

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_67

    .line 472
    ushr-int/lit8 v8, v8, 0x4

    .line 473
    add-int/lit8 v4, v4, -0x1

    goto :goto_56

    .line 462
    .end local v4           #fractionDigits:I
    :cond_61
    const-string v9, "0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 476
    .restart local v4       #fractionDigits:I
    :cond_67
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_83

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_83

    .line 480
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .local v1, digitDiff:I
    move v2, v1

    .line 481
    .end local v1           #digitDiff:I
    .local v2, digitDiff:I
    :goto_7a
    add-int/lit8 v1, v2, -0x1

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_83

    .line 482
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_7a

    .line 485
    .end local v2           #digitDiff:I
    :cond_83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v9, "p-126"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8

    .line 488
    .end local v4           #fractionDigits:I
    .end local v5           #hexSignificand:Ljava/lang/String;
    :cond_91
    const-string v9, "1."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/4 v4, 0x6

    .line 493
    .restart local v4       #fractionDigits:I
    :goto_97
    if-eqz v8, :cond_a2

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_a2

    .line 494
    ushr-int/lit8 v8, v8, 0x4

    .line 495
    add-int/lit8 v4, v4, -0x1

    goto :goto_97

    .line 498
    :cond_a2
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    .restart local v5       #hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_be

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_be

    .line 502
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .restart local v1       #digitDiff:I
    move v2, v1

    .line 503
    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    :goto_b5
    add-int/lit8 v1, v2, -0x1

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_be

    .line 504
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_b5

    .line 507
    .end local v2           #digitDiff:I
    :cond_be
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/16 v9, 0x70

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    const/16 v9, 0x7f

    sub-int v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8b
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 2
    .parameter "f"

    .prologue
    .line 345
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/RealToString;->floatToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .registers 2
    .parameter "f"

    .prologue
    .line 420
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 165
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 175
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 193
    if-eq p1, p0, :cond_16

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_18

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, Ljava/lang/Float;

    .end local p1
    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 307
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
