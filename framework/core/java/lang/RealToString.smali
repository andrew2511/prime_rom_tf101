.class final Ljava/lang/RealToString;
.super Ljava/lang/Object;
.source "RealToString.java"


# static fields
.field private static final INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/RealToString;",
            ">;"
        }
    .end annotation
.end field

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private digitCount:I

.field private final digits:[I

.field private firstK:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RealToString$1;

    invoke-direct {v0}, Ljava/lang/RealToString$1;-><init>()V

    sput-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    .line 29
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/lang/RealToString;->digits:[I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/RealToString$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/RealToString;-><init>()V

    return-void
.end method

.method private native bigIntDigitGenerator(JIZI)V
.end method

.method private convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;
    .registers 29
    .parameter "sb"
    .parameter "inputNumber"

    .prologue
    .line 67
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v20

    .line 68
    .local v20, inputNumberBits:J
    const-wide/high16 v10, -0x8000

    and-long v10, v10, v20

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_47

    const/4 v3, 0x1

    move/from16 v23, v3

    .line 69
    .local v23, positive:Z
    :goto_11
    const-wide/high16 v10, 0x7ff0

    and-long v10, v10, v20

    const/16 v3, 0x34

    shr-long/2addr v10, v3

    move-wide v0, v10

    long-to-int v0, v0

    move/from16 v17, v0

    .line 70
    .local v17, e:I
    const-wide v10, 0xfffffffffffffL

    and-long v4, v20, v10

    .line 71
    .local v4, f:J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-nez v3, :cond_4b

    const/4 v3, 0x1

    move v8, v3

    .line 73
    .local v8, mantissaIsZero:Z
    :goto_2b
    const/16 v24, 0x0

    .line 74
    .local v24, quickResult:Ljava/lang/String;
    const/16 v3, 0x7ff

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_56

    .line 75
    if-eqz v8, :cond_53

    .line 76
    if-eqz v23, :cond_4e

    const-string v3, "Infinity"

    move-object/from16 v24, v3

    .line 88
    :cond_3c
    :goto_3c
    if-eqz v24, :cond_78

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_46
    return-object v3

    .line 68
    .end local v4           #f:J
    .end local v8           #mantissaIsZero:Z
    .end local v17           #e:I
    .end local v23           #positive:Z
    .end local v24           #quickResult:Ljava/lang/String;
    :cond_47
    const/4 v3, 0x0

    move/from16 v23, v3

    goto :goto_11

    .line 71
    .restart local v4       #f:J
    .restart local v17       #e:I
    .restart local v23       #positive:Z
    :cond_4b
    const/4 v3, 0x0

    move v8, v3

    goto :goto_2b

    .line 76
    .restart local v8       #mantissaIsZero:Z
    .restart local v24       #quickResult:Ljava/lang/String;
    :cond_4e
    const-string v3, "-Infinity"

    move-object/from16 v24, v3

    goto :goto_3c

    .line 78
    :cond_53
    const-string v24, "NaN"

    goto :goto_3c

    .line 80
    :cond_56
    if-nez v17, :cond_3c

    .line 81
    if-eqz v8, :cond_66

    .line 82
    if-eqz v23, :cond_61

    const-string v3, "0.0"

    move-object/from16 v24, v3

    :goto_60
    goto :goto_3c

    :cond_61
    const-string v3, "-0.0"

    move-object/from16 v24, v3

    goto :goto_60

    .line 83
    :cond_66
    const-wide/16 v10, 0x1

    cmp-long v3, v4, v10

    if-nez v3, :cond_3c

    .line 85
    if-eqz v23, :cond_73

    const-string v3, "4.9E-324"

    move-object/from16 v24, v3

    :goto_72
    goto :goto_3c

    :cond_73
    const-string v3, "-4.9E-324"

    move-object/from16 v24, v3

    goto :goto_72

    .line 92
    :cond_78
    const/16 v22, 0x433

    .line 94
    .local v22, p:I
    const/16 v9, 0x34

    .line 95
    .local v9, numBits:I
    if-nez v17, :cond_93

    .line 96
    const/4 v3, 0x1

    sub-int v6, v3, v22

    .line 97
    .local v6, pow:I
    move-wide/from16 v18, v4

    .line 98
    .local v18, ff:J
    :goto_83
    const-wide/high16 v10, 0x10

    and-long v10, v10, v18

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_98

    .line 99
    const/4 v3, 0x1

    shl-long v18, v18, v3

    .line 100
    add-int/lit8 v9, v9, -0x1

    goto :goto_83

    .line 105
    .end local v6           #pow:I
    .end local v18           #ff:J
    :cond_93
    const-wide/high16 v10, 0x10

    or-long/2addr v4, v10

    .line 106
    sub-int v6, v17, v22

    .line 109
    .restart local v6       #pow:I
    :cond_98
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->firstK:I

    .line 110
    const/16 v3, -0x3b

    if-ge v3, v6, :cond_aa

    const/4 v3, 0x6

    if-lt v6, v3, :cond_b0

    :cond_aa
    const/16 v3, -0x3b

    if-ne v6, v3, :cond_f2

    if-nez v8, :cond_f2

    .line 111
    :cond_b0
    if-nez v17, :cond_ef

    const/4 v3, 0x1

    move v7, v3

    :goto_b4
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    .line 115
    :goto_b9
    if-eqz p1, :cond_102

    move-object/from16 v16, p1

    .line 116
    .end local v6           #pow:I
    .local v16, dst:Ljava/lang/AbstractStringBuilder;
    :goto_bd
    const-wide v10, 0x416312d000000000L

    cmpl-double v3, p2, v10

    if-gez v3, :cond_e1

    const-wide v10, -0x3e9ced3000000000L

    cmpg-double v3, p2, v10

    if-lez v3, :cond_e1

    const-wide v10, -0x40af9db22d0e5604L

    cmpl-double v3, p2, v10

    if-lez v3, :cond_10c

    const-wide v10, 0x3f50624dd2f1a9fcL

    cmpg-double v3, p2, v10

    if-gez v3, :cond_10c

    .line 118
    :cond_e1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    .line 122
    :goto_ea
    if-eqz p1, :cond_116

    const/4 v3, 0x0

    goto/16 :goto_46

    .line 111
    .end local v16           #dst:Ljava/lang/AbstractStringBuilder;
    .restart local v6       #pow:I
    :cond_ef
    const/4 v3, 0x0

    move v7, v3

    goto :goto_b4

    .line 113
    :cond_f2
    if-nez v17, :cond_ff

    const/4 v3, 0x1

    move v14, v3

    :goto_f6
    move-object/from16 v10, p0

    move-wide v11, v4

    move v13, v6

    move v15, v9

    invoke-direct/range {v10 .. v15}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_b9

    :cond_ff
    const/4 v3, 0x0

    move v14, v3

    goto :goto_f6

    .line 115
    :cond_102
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x1a

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .end local v6           #pow:I
    move-object/from16 v16, v3

    goto :goto_bd

    .line 120
    .restart local v16       #dst:Ljava/lang/AbstractStringBuilder;
    :cond_10c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_ea

    .line 122
    :cond_116
    invoke-virtual/range {v16 .. v16}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_46
.end method

.method private freeFormat(Ljava/lang/AbstractStringBuilder;Z)V
    .registers 12
    .parameter "sb"
    .parameter "positive"

    .prologue
    const/16 v8, 0x2e

    const/16 v7, 0x30

    const/4 v6, -0x1

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, digitIndex:I
    if-nez p2, :cond_d

    .line 219
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 221
    :cond_d
    iget v4, p0, Ljava/lang/RealToString;->firstK:I

    .line 222
    .local v4, k:I
    if-gez v4, :cond_21

    .line 223
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 224
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 225
    add-int/lit8 v3, v4, 0x1

    .local v3, i:I
    :goto_19
    if-gez v3, :cond_21

    .line 226
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 229
    .end local v3           #i:I
    :cond_21
    iget-object v5, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #digitIndex:I
    .local v2, digitIndex:I
    aget v0, v5, v1

    .line 231
    .local v0, U:I
    :goto_27
    if-eq v0, v6, :cond_46

    .line 232
    add-int/lit8 v5, v0, 0x30

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 236
    :cond_2f
    :goto_2f
    if-nez v4, :cond_34

    .line 237
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 239
    :cond_34
    add-int/lit8 v4, v4, -0x1

    .line 240
    iget v5, p0, Ljava/lang/RealToString;->digitCount:I

    if-ge v2, v5, :cond_4c

    iget-object v5, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #digitIndex:I
    .restart local v1       #digitIndex:I
    aget v5, v5, v2

    move v0, v5

    .line 241
    :goto_41
    if-ne v0, v6, :cond_4f

    if-ge v4, v6, :cond_4f

    .line 242
    return-void

    .line 233
    .end local v1           #digitIndex:I
    .restart local v2       #digitIndex:I
    :cond_46
    if-lt v4, v6, :cond_2f

    .line 234
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    goto :goto_2f

    :cond_4c
    move v0, v6

    move v1, v2

    .line 240
    .end local v2           #digitIndex:I
    .restart local v1       #digitIndex:I
    goto :goto_41

    :cond_4f
    move v2, v1

    .end local v1           #digitIndex:I
    .restart local v2       #digitIndex:I
    goto :goto_27
.end method

.method private freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V
    .registers 8
    .parameter "sb"
    .parameter "positive"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, digitIndex:I
    if-nez p2, :cond_8

    .line 194
    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 196
    :cond_8
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #digitIndex:I
    .local v1, digitIndex:I
    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 197
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 199
    iget v3, p0, Ljava/lang/RealToString;->firstK:I

    .line 200
    .local v3, k:I
    move v2, v3

    .local v2, exponent:I
    move v0, v1

    .line 202
    .end local v1           #digitIndex:I
    .restart local v0       #digitIndex:I
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    .line 203
    iget v4, p0, Ljava/lang/RealToString;->digitCount:I

    if-lt v0, v4, :cond_36

    .line 209
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne v3, v4, :cond_2d

    .line 210
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 212
    :cond_2d
    const/16 v4, 0x45

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 213
    invoke-static {p1, v2}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    .line 214
    return-void

    .line 206
    :cond_36
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #digitIndex:I
    .restart local v1       #digitIndex:I
    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    move v0, v1

    .end local v1           #digitIndex:I
    .restart local v0       #digitIndex:I
    goto :goto_1d
.end method

.method public static getInstance()Ljava/lang/RealToString;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RealToString;

    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .registers 28
    .parameter "f"
    .parameter "e"
    .parameter "isDenormalized"
    .parameter "mantissaIsZero"
    .parameter "p"

    .prologue
    .line 249
    if-ltz p3, :cond_5e

    .line 250
    const-wide/16 v17, 0x1

    shl-long v2, v17, p3

    .line 251
    .local v2, M:J
    if-nez p5, :cond_57

    .line 252
    add-int/lit8 v17, p3, 0x1

    shl-long v4, p1, v17

    .line 253
    .local v4, R:J
    const-wide/16 v6, 0x2

    .line 269
    .local v6, S:J
    :goto_e
    add-int v17, p3, p6

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sget-wide v19, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    mul-double v17, v17, v19

    const-wide v19, 0x3ddb7cdfd9d7bdbbL

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v11, v0

    .line 271
    .local v11, k:I
    if-lez v11, :cond_7e

    .line 272
    sget-object v17, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v17, v17, v11

    mul-long v6, v6, v17

    .line 279
    :cond_34
    :goto_34
    add-long v17, v4, v2

    cmp-long v17, v17, v6

    if-lez v17, :cond_96

    .line 280
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->firstK:I

    .line 291
    :goto_3f
    const/4 v8, 0x0

    .line 292
    .local v8, U:I
    const/4 v10, 0x3

    .local v10, i:I
    :goto_41
    if-ltz v10, :cond_a9

    .line 293
    shl-long v17, v6, v10

    sub-long v13, v4, v17

    .line 294
    .local v13, remainder:J
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-ltz v17, :cond_54

    .line 295
    move-wide v4, v13

    .line 296
    const/16 v17, 0x1

    shl-int v17, v17, v10

    add-int v8, v8, v17

    .line 292
    :cond_54
    add-int/lit8 v10, v10, -0x1

    goto :goto_41

    .line 255
    .end local v4           #R:J
    .end local v6           #S:J
    .end local v8           #U:I
    .end local v10           #i:I
    .end local v11           #k:I
    .end local v13           #remainder:J
    :cond_57
    add-int/lit8 v17, p3, 0x2

    shl-long v4, p1, v17

    .line 256
    .restart local v4       #R:J
    const-wide/16 v6, 0x4

    .restart local v6       #S:J
    goto :goto_e

    .line 259
    .end local v2           #M:J
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_5e
    const-wide/16 v2, 0x1

    .line 260
    .restart local v2       #M:J
    if-nez p4, :cond_64

    if-nez p5, :cond_71

    .line 261
    :cond_64
    const/16 v17, 0x1

    shl-long v4, p1, v17

    .line 262
    .restart local v4       #R:J
    const-wide/16 v17, 0x1

    const/16 v19, 0x1

    sub-int v19, v19, p3

    shl-long v6, v17, v19

    .restart local v6       #S:J
    goto :goto_e

    .line 264
    .end local v4           #R:J
    .end local v6           #S:J
    :cond_71
    const/16 v17, 0x2

    shl-long v4, p1, v17

    .line 265
    .restart local v4       #R:J
    const-wide/16 v17, 0x1

    const/16 v19, 0x2

    sub-int v19, v19, p3

    shl-long v6, v17, v19

    .restart local v6       #S:J
    goto :goto_e

    .line 273
    .restart local v11       #k:I
    :cond_7e
    if-gez v11, :cond_34

    .line 274
    sget-object v17, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    move v0, v11

    neg-int v0, v0

    move/from16 v18, v0

    aget-wide v15, v17, v18

    .line 275
    .local v15, scale:J
    mul-long/2addr v4, v15

    .line 276
    const-wide/16 v17, 0x1

    cmp-long v17, v2, v17

    if-nez v17, :cond_91

    move-wide v2, v15

    :goto_90
    goto :goto_34

    :cond_91
    mul-long v17, v2, v15

    move-wide/from16 v2, v17

    goto :goto_90

    .line 282
    .end local v15           #scale:J
    :cond_96
    const/16 v17, 0x1

    sub-int v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->firstK:I

    .line 283
    const-wide/16 v17, 0xa

    mul-long v4, v4, v17

    .line 284
    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    goto :goto_3f

    .line 300
    .restart local v8       #U:I
    .restart local v10       #i:I
    :cond_a9
    cmp-long v17, v4, v2

    if-gez v17, :cond_da

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 301
    .local v12, low:Z
    :goto_b1
    add-long v17, v4, v2

    cmp-long v17, v17, v6

    if-lez v17, :cond_df

    const/16 v17, 0x1

    move/from16 v9, v17

    .line 303
    .local v9, high:Z
    :goto_bb
    if-nez v12, :cond_bf

    if-eqz v9, :cond_e4

    .line 310
    :cond_bf
    if-eqz v12, :cond_104

    if-nez v9, :cond_104

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    .line 319
    :goto_d9
    return-void

    .line 300
    .end local v9           #high:Z
    .end local v12           #low:Z
    :cond_da
    const/16 v17, 0x0

    move/from16 v12, v17

    goto :goto_b1

    .line 301
    .restart local v12       #low:Z
    :cond_df
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_bb

    .line 306
    .restart local v9       #high:Z
    :cond_e4
    const-wide/16 v17, 0xa

    mul-long v4, v4, v17

    .line 307
    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    goto/16 :goto_3f

    .line 312
    :cond_104
    if-eqz v9, :cond_121

    if-nez v12, :cond_121

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v17, v18

    goto :goto_d9

    .line 314
    :cond_121
    const/16 v17, 0x1

    shl-long v17, v4, v17

    cmp-long v17, v17, v6

    if-gez v17, :cond_140

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    goto :goto_d9

    .line 317
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v17, v18

    goto :goto_d9
.end method

.method private static resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "sb"
    .parameter "s"

    .prologue
    .line 51
    if-eqz p0, :cond_7

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_6
    return-object v0

    :cond_7
    move-object v0, p1

    goto :goto_6
.end method


# virtual methods
.method public appendDouble(Ljava/lang/AbstractStringBuilder;D)V
    .registers 4
    .parameter "sb"
    .parameter "d"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    .line 64
    return-void
.end method

.method public appendFloat(Ljava/lang/AbstractStringBuilder;F)V
    .registers 3
    .parameter "sb"
    .parameter "f"

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    .line 131
    return-void
.end method

.method public convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;
    .registers 27
    .parameter "sb"
    .parameter "inputNumber"

    .prologue
    .line 134
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v20

    .line 135
    .local v20, inputNumberBits:I
    const/high16 v3, -0x8000

    and-int v3, v3, v20

    if-nez v3, :cond_38

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 136
    .local v22, positive:Z
    :goto_d
    const/high16 v3, 0x7f80

    and-int v3, v3, v20

    shr-int/lit8 v17, v3, 0x17

    .line 137
    .local v17, e:I
    const v3, 0x7fffff

    and-int v18, v20, v3

    .line 138
    .local v18, f:I
    if-nez v18, :cond_3c

    const/4 v3, 0x1

    move v8, v3

    .line 140
    .local v8, mantissaIsZero:Z
    :goto_1c
    const/16 v23, 0x0

    .line 141
    .local v23, quickResult:Ljava/lang/String;
    const/16 v3, 0xff

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_47

    .line 142
    if-eqz v8, :cond_44

    .line 143
    if-eqz v22, :cond_3f

    const-string v3, "Infinity"

    move-object/from16 v23, v3

    .line 150
    :cond_2d
    :goto_2d
    if-eqz v23, :cond_57

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_37
    return-object v3

    .line 135
    .end local v8           #mantissaIsZero:Z
    .end local v17           #e:I
    .end local v18           #f:I
    .end local v22           #positive:Z
    .end local v23           #quickResult:Ljava/lang/String;
    :cond_38
    const/4 v3, 0x0

    move/from16 v22, v3

    goto :goto_d

    .line 138
    .restart local v17       #e:I
    .restart local v18       #f:I
    .restart local v22       #positive:Z
    :cond_3c
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1c

    .line 143
    .restart local v8       #mantissaIsZero:Z
    .restart local v23       #quickResult:Ljava/lang/String;
    :cond_3f
    const-string v3, "-Infinity"

    move-object/from16 v23, v3

    goto :goto_2d

    .line 145
    :cond_44
    const-string v23, "NaN"

    goto :goto_2d

    .line 147
    :cond_47
    if-nez v17, :cond_2d

    if-eqz v8, :cond_2d

    .line 148
    if-eqz v22, :cond_52

    const-string v3, "0.0"

    move-object/from16 v23, v3

    :goto_51
    goto :goto_2d

    :cond_52
    const-string v3, "-0.0"

    move-object/from16 v23, v3

    goto :goto_51

    .line 154
    :cond_57
    const/16 v21, 0x96

    .line 156
    .local v21, p:I
    const/16 v9, 0x17

    .line 157
    .local v9, numBits:I
    if-nez v17, :cond_78

    .line 158
    const/4 v3, 0x1

    sub-int v6, v3, v21

    .line 159
    .local v6, pow:I
    const/16 v3, 0x8

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_6b

    .line 160
    shl-int/lit8 v18, v18, 0x2

    .line 161
    add-int/lit8 v6, v6, -0x2

    .line 163
    :cond_6b
    move/from16 v19, v18

    .line 164
    .local v19, ff:I
    :goto_6d
    const/high16 v3, 0x80

    and-int v3, v3, v19

    if-nez v3, :cond_7e

    .line 165
    shl-int/lit8 v19, v19, 0x1

    .line 166
    add-int/lit8 v9, v9, -0x1

    goto :goto_6d

    .line 171
    .end local v6           #pow:I
    .end local v19           #ff:I
    :cond_78
    const/high16 v3, 0x80

    or-int v18, v18, v3

    .line 172
    sub-int v6, v17, v21

    .line 175
    .restart local v6       #pow:I
    :cond_7e
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->firstK:I

    .line 176
    const/16 v3, -0x3b

    if-ge v3, v6, :cond_91

    const/16 v3, 0x23

    if-lt v6, v3, :cond_97

    :cond_91
    const/16 v3, -0x3b

    if-ne v6, v3, :cond_d5

    if-nez v8, :cond_d5

    .line 177
    :cond_97
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v4, v0

    if-nez v17, :cond_d2

    const/4 v3, 0x1

    move v7, v3

    :goto_9f
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    .line 181
    :goto_a4
    if-eqz p1, :cond_e8

    move-object/from16 v16, p1

    .line 182
    .local v16, dst:Ljava/lang/AbstractStringBuilder;
    :goto_a8
    const v3, 0x4b189680

    cmpl-float v3, p2, v3

    if-gez v3, :cond_c4

    const v3, -0x34e76980

    cmpg-float v3, p2, v3

    if-lez v3, :cond_c4

    const v3, -0x457ced91

    cmpl-float v3, p2, v3

    if-lez v3, :cond_f2

    const v3, 0x3a83126f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_f2

    .line 184
    :cond_c4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    .line 188
    :goto_cd
    if-eqz p1, :cond_fc

    const/4 v3, 0x0

    goto/16 :goto_37

    .line 177
    .end local v16           #dst:Ljava/lang/AbstractStringBuilder;
    :cond_d2
    const/4 v3, 0x0

    move v7, v3

    goto :goto_9f

    .line 179
    :cond_d5
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v11, v0

    if-nez v17, :cond_e5

    const/4 v3, 0x1

    move v14, v3

    :goto_dd
    move-object/from16 v10, p0

    move v13, v6

    move v15, v9

    invoke-direct/range {v10 .. v15}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_a4

    :cond_e5
    const/4 v3, 0x0

    move v14, v3

    goto :goto_dd

    .line 181
    :cond_e8
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v3

    goto :goto_a8

    .line 186
    .restart local v16       #dst:Ljava/lang/AbstractStringBuilder;
    :cond_f2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_cd

    .line 188
    :cond_fc
    invoke-virtual/range {v16 .. v16}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37
.end method

.method public doubleToString(D)Ljava/lang/String;
    .registers 4
    .parameter "d"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public floatToString(F)Ljava/lang/String;
    .registers 3
    .parameter "f"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
