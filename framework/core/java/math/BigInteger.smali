.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MINUS_ONE:Ljava/math/BigInteger; = null

.field public static final ONE:Ljava/math/BigInteger; = null

.field static final SMALL_VALUES:[Ljava/math/BigInteger; = null

.field public static final TEN:Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigInteger; = null

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field private transient bigInt:Ljava/math/BigInt;

.field transient digits:[I

.field private transient firstNonzeroDigit:I

.field private transient hashCode:I

.field private transient javaIsValid:Z

.field private magnitude:[B

.field private transient nativeIsValid:Z

.field transient numberLength:I

.field transient sign:I

.field private signum:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 72
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 78
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v5, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 81
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 84
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v1, v0, v3

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .registers 7
    .parameter "bitLength"
    .parameter "certainty"
    .parameter "unused"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 170
    const/4 v0, 0x2

    if-ge p1, v0, :cond_29

    .line 171
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitLength < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_29
    invoke-static {p1}, Ljava/math/BigInt;->generatePrimeDefault(I)Ljava/math/BigInt;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 174
    return-void
.end method

.method constructor <init>(II[I)V
    .registers 6
    .parameter "sign"
    .parameter "numberLength"
    .parameter "digits"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 123
    return-void
.end method

.method constructor <init>(IJ)V
    .registers 7
    .parameter "sign"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 108
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 109
    .local v0, bigInt:Ljava/math/BigInt;
    if-gez p1, :cond_1c

    const/4 v1, 0x1

    :goto_15
    invoke-virtual {v0, p2, p3, v1}, Ljava/math/BigInt;->putULongInt(JZ)V

    .line 110
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 111
    return-void

    :cond_1c
    move v1, v2

    .line 109
    goto :goto_15
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .registers 11
    .parameter "numBits"
    .parameter "random"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v5, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v5, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v4, -0x2

    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v5, p0, Ljava/math/BigInteger;->hashCode:I

    .line 134
    if-gez p1, :cond_29

    .line 135
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numBits < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_29
    if-nez p1, :cond_35

    .line 138
    new-array v4, v7, [I

    aput v5, v4, v5

    invoke-direct {p0, v5, v7, v4}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 150
    :goto_32
    iput-boolean v7, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 151
    return-void

    .line 140
    :cond_35
    const/4 v3, 0x1

    .line 141
    .local v3, sign:I
    add-int/lit8 v4, p1, 0x1f

    shr-int/lit8 v2, v4, 0x5

    .line 142
    .local v2, numberLength:I
    new-array v0, v2, [I

    .line 143
    .local v0, digits:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    if-ge v1, v2, :cond_48

    .line 144
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v4

    aput v4, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 147
    :cond_48
    sub-int v4, v2, v7

    aget v5, v0, v4

    neg-int v6, p1

    and-int/lit8 v6, v6, 0x1f

    ushr-int/2addr v5, v6

    aput v5, v0, v4

    .line 148
    invoke-direct {p0, v3, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    goto :goto_32
.end method

.method public constructor <init>(I[B)V
    .registers 11
    .parameter "signum"
    .parameter "magnitude"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v5, -0x2

    iput v5, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v6, p0, Ljava/math/BigInteger;->hashCode:I

    .line 242
    if-nez p2, :cond_18

    .line 243
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "magnitude == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_18
    const/4 v5, -0x1

    if-lt p1, v5, :cond_1d

    if-le p1, v7, :cond_36

    .line 246
    :cond_1d
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid signum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_36
    if-nez p1, :cond_4c

    .line 249
    move-object v0, p2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3b
    if-ge v3, v4, :cond_4c

    aget-byte v2, v0, v3

    .line 250
    .local v2, element:B
    if-eqz v2, :cond_49

    .line 251
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "signum-magnitude mismatch"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 255
    .end local v0           #arr$:[B
    .end local v2           #element:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4c
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 256
    .local v1, bigInt:Ljava/math/BigInt;
    if-gez p1, :cond_5b

    move v5, v7

    :goto_54
    invoke-virtual {v1, p2, v5}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 257
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 258
    return-void

    :cond_5b
    move v5, v6

    .line 256
    goto :goto_54
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 188
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 189
    .local v0, bigInt:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .parameter "value"
    .parameter "radix"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 207
    if-nez p1, :cond_17

    .line 208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_17
    const/16 v1, 0xa

    if-ne p2, v1, :cond_27

    .line 211
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 212
    .local v0, bigInt:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 227
    .end local v0           #bigInt:Ljava/math/BigInt;
    :goto_26
    return-void

    .line 214
    :cond_27
    const/16 v1, 0x10

    if-ne p2, v1, :cond_37

    .line 215
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 216
    .restart local v0       #bigInt:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putHexString(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    goto :goto_26

    .line 219
    .end local v0           #bigInt:Ljava/math/BigInt;
    :cond_37
    const/4 v1, 0x2

    if-lt p2, v1, :cond_3e

    const/16 v1, 0x24

    if-le p2, v1, :cond_57

    .line 220
    :cond_3e
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid radix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_57
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 223
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.isEmpty()"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_65
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V

    goto :goto_26
.end method

.method constructor <init>(Ljava/math/BigInt;)V
    .registers 4
    .parameter "bigInt"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 101
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/math/BigInt;->getNativeBIGNUM()I

    move-result v0

    if-nez v0, :cond_1b

    .line 102
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_1b
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 105
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 57
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 89
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 98
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 272
    array-length v1, p1

    if-nez v1, :cond_18

    .line 273
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.length == 0"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_18
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 276
    .local v0, bigInt:Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putBigEndianTwosComplement([B)V

    .line 277
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 278
    return-void
.end method

.method static inplaceAdd([III)I
    .registers 10
    .parameter "a"
    .parameter "aSize"
    .parameter "addend"

    .prologue
    const-wide v5, 0xffffffffL

    .line 1123
    int-to-long v3, p2

    and-long v0, v3, v5

    .line 1125
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1f

    if-ge v2, p1, :cond_1f

    .line 1126
    aget v3, p0, v2

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1127
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1128
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1130
    :cond_1f
    long-to-int v3, v0

    return v3
.end method

.method static multiplyByInt([I[III)I
    .registers 13
    .parameter "res"
    .parameter "a"
    .parameter "aSize"
    .parameter "factor"

    .prologue
    const-wide v7, 0xffffffffL

    .line 1112
    const-wide/16 v0, 0x0

    .line 1114
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, p2, :cond_1b

    .line 1115
    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    int-to-long v5, p3

    and-long/2addr v5, v7

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1116
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1117
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1119
    :cond_1b
    long-to-int v3, v0

    return v3
.end method

.method private static parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V
    .registers 13
    .parameter "bi"
    .parameter "value"
    .parameter "radix"

    .prologue
    .line 1135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1136
    .local v2, stringLength:I
    move v5, v2

    .line 1140
    .local v5, endChar:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_52

    .line 1141
    const/4 v0, -0x1

    .line 1142
    .local v0, sign:I
    const/4 v1, 0x1

    .line 1143
    .local v1, startChar:I
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    .end local v1           #startChar:I
    .local v3, startChar:I
    move v7, v0

    .end local v0           #sign:I
    .local v7, sign:I
    move v1, v2

    .line 1157
    .end local v2           #stringLength:I
    .local v1, stringLength:I
    :goto_15
    sget-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    aget v2, v0, p2

    .line 1158
    .local v2, charsPerInt:I
    div-int v0, v1, v2

    .line 1159
    .local v0, bigRadixDigitsLength:I
    rem-int v6, v1, v2

    .line 1161
    .local v6, topChars:I
    if-eqz v6, :cond_21

    .line 1162
    add-int/lit8 v0, v0, 0x1

    .line 1164
    :cond_21
    new-array v4, v0, [I

    .line 1166
    .local v4, digits:[I
    sget-object v0, Ljava/math/Conversion;->bigRadices:[I

    .end local v0           #bigRadixDigitsLength:I
    const/4 v1, 0x2

    sub-int v1, p2, v1

    aget v0, v0, v1

    .line 1168
    .end local v1           #stringLength:I
    .local v0, bigRadix:I
    const/4 v1, 0x0

    .line 1169
    .local v1, digitIndex:I
    if-nez v6, :cond_2e

    move v6, v2

    .end local v6           #topChars:I
    :cond_2e
    add-int/2addr v6, v3

    .line 1171
    .local v6, substrEnd:I
    move v3, v3

    .local v3, substrStart:I
    move v8, v6

    .end local v6           #substrEnd:I
    .local v8, substrEnd:I
    move v9, v3

    .end local v3           #substrStart:I
    .local v9, substrStart:I
    move v3, v1

    .end local v1           #digitIndex:I
    .local v3, digitIndex:I
    move v1, v9

    .end local v9           #substrStart:I
    .local v1, substrStart:I
    :goto_34
    if-ge v1, v5, :cond_58

    .line 1173
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1           #substrStart:I
    invoke-static {v1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1174
    .local v1, bigRadixDigit:I
    invoke-static {v4, v4, v3, v0}, Ljava/math/BigInteger;->multiplyByInt([I[III)I

    move-result v6

    .line 1175
    .local v6, newDigit:I
    invoke-static {v4, v3, v1}, Ljava/math/BigInteger;->inplaceAdd([III)I

    move-result v1

    .end local v1           #bigRadixDigit:I
    add-int/2addr v6, v1

    .line 1176
    add-int/lit8 v1, v3, 0x1

    .end local v3           #digitIndex:I
    .local v1, digitIndex:I
    aput v6, v4, v3

    .line 1172
    move v6, v8

    .local v6, substrStart:I
    add-int v3, v6, v2

    .end local v8           #substrEnd:I
    .local v3, substrEnd:I
    move v8, v3

    .end local v3           #substrEnd:I
    .restart local v8       #substrEnd:I
    move v3, v1

    .end local v1           #digitIndex:I
    .local v3, digitIndex:I
    move v1, v6

    .end local v6           #substrStart:I
    .local v1, substrStart:I
    goto :goto_34

    .line 1145
    .end local v0           #bigRadix:I
    .end local v1           #substrStart:I
    .end local v3           #digitIndex:I
    .end local v4           #digits:[I
    .end local v7           #sign:I
    .end local v8           #substrEnd:I
    .local v2, stringLength:I
    :cond_52
    const/4 v0, 0x1

    .line 1146
    .local v0, sign:I
    const/4 v1, 0x0

    .local v1, startChar:I
    move v3, v1

    .end local v1           #startChar:I
    .local v3, startChar:I
    move v7, v0

    .end local v0           #sign:I
    .restart local v7       #sign:I
    move v1, v2

    .end local v2           #stringLength:I
    .local v1, stringLength:I
    goto :goto_15

    .line 1178
    .local v0, bigRadix:I
    .local v1, substrStart:I
    .local v2, charsPerInt:I
    .local v3, digitIndex:I
    .restart local v4       #digits:[I
    .restart local v8       #substrEnd:I
    :cond_58
    move p1, v3

    .line 1179
    .local p1, numberLength:I
    invoke-direct {p0, v7, p1, v4}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 1180
    return-void
.end method

.method public static probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 4
    .parameter "bitLength"
    .parameter "unused"

    .prologue
    .line 1036
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1214
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 1215
    .local v0, bigInt:Ljava/math/BigInt;
    iget-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    if-gez v2, :cond_16

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 1216
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 1217
    return-void

    .line 1215
    :cond_16
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private setBigInt(Ljava/math/BigInt;)V
    .registers 3
    .parameter "bigInt"

    .prologue
    .line 301
    iput-object p1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 303
    return-void
.end method

.method private setJavaRepresentation(II[I)V
    .registers 6
    .parameter "sign"
    .parameter "numberLength"
    .parameter "digits"

    .prologue
    .line 307
    :cond_0
    if-lez p2, :cond_8

    add-int/lit8 p2, p2, -0x1

    aget v1, p3, p2

    if-eqz v1, :cond_0

    .line 311
    :cond_8
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, numberLength:I
    aget v1, p3, p2

    if-nez v1, :cond_f

    .line 312
    const/4 p1, 0x0

    .line 314
    :cond_f
    iput p1, p0, Ljava/math/BigInteger;->sign:I

    .line 315
    iput-object p3, p0, Ljava/math/BigInteger;->digits:[I

    .line 316
    iput v0, p0, Ljava/math/BigInteger;->numberLength:I

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 318
    return-void
.end method

.method private twosComplement()[B
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1048
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 1049
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-nez v12, :cond_e

    .line 1050
    new-array v12, v14, [B

    aput-byte v13, v12, v13

    .line 1107
    :goto_d
    return-object v12

    .line 1052
    :cond_e
    move-object v11, p0

    .line 1053
    .local v11, temp:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1054
    .local v0, bitLen:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v10

    .line 1055
    .local v10, iThis:I
    shr-int/lit8 v12, v0, 0x3

    add-int/lit8 v3, v12, 0x1

    .line 1058
    .local v3, bytesLen:I
    new-array v1, v3, [B

    .line 1059
    .local v1, bytes:[B
    const/4 v6, 0x0

    .line 1061
    .local v6, firstByteNumber:I
    const/4 v2, 0x4

    .line 1064
    .local v2, bytesInInteger:I
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v12, v12, 0x2

    sub-int v12, v3, v12

    if-ne v12, v14, :cond_55

    .line 1065
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_53

    const/4 v12, -0x1

    :goto_2c
    int-to-byte v12, v12

    aput-byte v12, v1, v13

    .line 1066
    const/4 v8, 0x4

    .line 1067
    .local v8, highBytes:I
    add-int/lit8 v6, v6, 0x1

    .line 1073
    :goto_32
    move v5, v10

    .line 1074
    .local v5, digitIndex:I
    shl-int/lit8 v12, v10, 0x2

    sub-int/2addr v3, v12

    .line 1076
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_7a

    .line 1077
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    neg-int v4, v12

    .line 1078
    .local v4, digit:I
    add-int/lit8 v5, v5, 0x1

    .line 1079
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_46

    .line 1080
    move v2, v8

    .line 1082
    :cond_46
    const/4 v9, 0x0

    .local v9, i:I
    :goto_47
    if-ge v9, v2, :cond_5e

    .line 1083
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1082
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_47

    .end local v4           #digit:I
    .end local v5           #digitIndex:I
    .end local v8           #highBytes:I
    .end local v9           #i:I
    :cond_53
    move v12, v13

    .line 1065
    goto :goto_2c

    .line 1069
    :cond_55
    and-int/lit8 v7, v3, 0x3

    .line 1070
    .local v7, hB:I
    if-nez v7, :cond_5c

    const/4 v12, 0x4

    move v8, v12

    .restart local v8       #highBytes:I
    :goto_5b
    goto :goto_32

    .end local v8           #highBytes:I
    :cond_5c
    move v8, v7

    goto :goto_5b

    .line 1085
    .end local v7           #hB:I
    .restart local v4       #digit:I
    .restart local v5       #digitIndex:I
    .restart local v8       #highBytes:I
    .restart local v9       #i:I
    :cond_5e
    if-le v3, v6, :cond_94

    .line 1086
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    xor-int/lit8 v4, v12, -0x1

    .line 1087
    add-int/lit8 v5, v5, 0x1

    .line 1088
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_6d

    .line 1089
    move v2, v8

    .line 1091
    :cond_6d
    const/4 v9, 0x0

    :goto_6e
    if-ge v9, v2, :cond_5e

    .line 1092
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1091
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_6e

    .line 1096
    .end local v4           #digit:I
    .end local v9           #i:I
    :cond_7a
    if-le v3, v6, :cond_94

    .line 1097
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v4, v12, v5

    .line 1098
    .restart local v4       #digit:I
    add-int/lit8 v5, v5, 0x1

    .line 1099
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_87

    .line 1100
    move v2, v8

    .line 1102
    :cond_87
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_88
    if-ge v9, v2, :cond_7a

    .line 1103
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1102
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_88

    .end local v4           #digit:I
    .end local v9           #i:I
    :cond_94
    move-object v12, v1

    .line 1107
    goto/16 :goto_d
.end method

.method public static valueOf(J)Ljava/math/BigInteger;
    .registers 6
    .parameter "value"

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    .line 338
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    .line 339
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    neg-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    .line 345
    :goto_13
    return-object v0

    .line 341
    :cond_14
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    goto :goto_13

    .line 342
    :cond_17
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_25

    .line 343
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_13

    .line 345
    :cond_25
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/math/BigInteger;-><init>(IJ)V

    goto :goto_13
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 1225
    .local v0, bigInt:Ljava/math/BigInt;
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v1

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 1226
    invoke-virtual {v0}, Ljava/math/BigInt;->bigEndianMagnitude()[B

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    .line 1227
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1228
    return-void
.end method


# virtual methods
.method public abs()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 363
    .local v1, bigInt:Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-ltz v2, :cond_c

    move-object v2, p0

    .line 368
    :goto_b
    return-object v2

    .line 366
    :cond_c
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 367
    .local v0, a:Ljava/math/BigInt;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInt;->setSign(I)V

    .line 368
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_b
.end method

.method public add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "value"

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 390
    .local v0, lhs:Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 391
    .local v1, rhs:Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_10

    move-object v2, p0

    .line 397
    :goto_f
    return-object v2

    .line 394
    :cond_10
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_18

    move-object v2, p1

    .line 395
    goto :goto_f

    .line 397
    :cond_18
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInt;->addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_f
.end method

.method public and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .parameter "value"

    .prologue
    .line 659
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 660
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 661
    invoke-static {p0, p1}, Ljava/math/Logical;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .parameter "value"

    .prologue
    .line 706
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 707
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 708
    invoke-static {p0, p1}, Ljava/math/Logical;->andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bitCount()I
    .registers 2

    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 634
    invoke-static {p0}, Ljava/math/BitLevel;->bitCount(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bitLength()I
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_d

    .line 493
    invoke-static {p0}, Ljava/math/BitLevel;->bitLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 495
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->bitLength()I

    move-result v0

    goto :goto_c
.end method

.method public clearBit(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 576
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 577
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 579
    :goto_d
    return-object v0

    :cond_e
    move-object v0, p0

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .parameter "value"

    .prologue
    .line 775
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/math/BigInt;->cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I

    move-result v0

    return v0
.end method

.method copy()Ljava/math/BigInteger;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1201
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 1202
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v0, v1, [I

    .line 1203
    .local v0, copyDigits:[I
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    new-instance v1, Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "divisor"

    .prologue
    .line 909
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 910
    .local v0, quotient:Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 911
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 8
    .parameter "divisor"

    .prologue
    .line 893
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 894
    .local v0, divisorBigInt:Ljava/math/BigInt;
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 895
    .local v1, quotient:Ljava/math/BigInt;
    new-instance v2, Ljava/math/BigInt;

    invoke-direct {v2}, Ljava/math/BigInt;-><init>()V

    .line 896
    .local v2, remainder:Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 897
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    return-object v3
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 763
    invoke-static {p0}, Ljava/math/Conversion;->bigInteger2Double(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "x"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 813
    if-ne p0, p1, :cond_6

    move v0, v2

    .line 819
    .end local p1
    :goto_5
    return v0

    .line 816
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_16

    .line 817
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_5

    :cond_14
    move v0, v1

    goto :goto_5

    .restart local p1
    :cond_16
    move v0, v1

    .line 819
    goto :goto_5
.end method

.method public flipBit(I)Ljava/math/BigInteger;
    .registers 5
    .parameter "n"

    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 596
    if-gez p1, :cond_1e

    .line 597
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1e
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "value"

    .prologue
    .line 858
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method getBigInt()Ljava/math/BigInt;
    .registers 4

    .prologue
    .line 285
    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_7

    .line 286
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 296
    :goto_6
    return-object v1

    .line 289
    :cond_7
    monitor-enter p0

    .line 290
    :try_start_8
    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_13

    .line 291
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    monitor-exit p0

    goto :goto_6

    .line 297
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1

    .line 293
    :cond_13
    :try_start_13
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 294
    .local v0, bigInt:Ljava/math/BigInt;
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-gez v2, :cond_28

    const/4 v2, 0x1

    :goto_1f
    invoke-virtual {v0, v1, v2}, Ljava/math/BigInt;->putLittleEndianInts([IZ)V

    .line 295
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 296
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10

    move-object v1, v0

    goto :goto_6

    .line 294
    :cond_28
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method getFirstNonzeroDigit()I
    .registers 4

    .prologue
    .line 1183
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 1185
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_f

    .line 1186
    const/4 v0, -0x1

    .line 1192
    .local v0, i:I
    :cond_a
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 1194
    .end local v0           #i:I
    :cond_c
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    return v1

    .line 1188
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_10
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    aget v1, v1, v0

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public getLowestSetBit()I
    .registers 4

    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 612
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_9

    .line 613
    const/4 v1, -0x1

    .line 617
    :goto_8
    return v1

    .line 616
    :cond_9
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .line 617
    .local v0, i:I
    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 800
    iget v4, p0, Ljava/math/BigInteger;->hashCode:I

    if-eqz v4, :cond_7

    .line 801
    iget v4, p0, Ljava/math/BigInteger;->hashCode:I

    .line 808
    :goto_6
    return v4

    .line 803
    :cond_7
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 804
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_1c

    aget v1, v0, v2

    .line 805
    .local v1, digit:I
    iget v4, p0, Ljava/math/BigInteger;->hashCode:I

    mul-int/lit8 v4, v4, 0x21

    add-int/2addr v4, v1

    iput v4, p0, Ljava/math/BigInteger;->hashCode:I

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 807
    .end local v1           #digit:I
    :cond_1c
    iget v4, p0, Ljava/math/BigInteger;->hashCode:I

    iget v5, p0, Ljava/math/BigInteger;->sign:I

    mul-int/2addr v4, v5

    iput v4, p0, Ljava/math/BigInteger;->hashCode:I

    .line 808
    iget v4, p0, Ljava/math/BigInteger;->hashCode:I

    goto :goto_6
.end method

.method public intValue()I
    .registers 4

    .prologue
    .line 718
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 719
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->longInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 722
    :goto_14
    return v0

    .line 721
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 722
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/2addr v0, v1

    goto :goto_14
.end method

.method public isProbablePrime(I)Z
    .registers 3
    .parameter "certainty"

    .prologue
    .line 1002
    if-gtz p1, :cond_4

    .line 1003
    const/4 v0, 0x1

    .line 1005
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v0

    goto :goto_3
.end method

.method public longValue()J
    .registers 9

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 732
    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 733
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->longInt()J

    move-result-wide v2

    .line 739
    :goto_1b
    return-wide v2

    .line 735
    :cond_1c
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 736
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-le v2, v4, :cond_38

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v0, v2

    .line 739
    .local v0, value:J
    :goto_33
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    goto :goto_1b

    .line 736
    .end local v0           #value:J
    :cond_38
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    move-wide v0, v2

    goto :goto_33
.end method

.method public max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "value"

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move-object v0, p0

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method public min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .parameter "value"

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    move-object v0, p0

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method public mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "m"

    .prologue
    .line 984
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_e

    .line 985
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "m.signum() <= 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_e
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "m"

    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_e

    .line 942
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_e
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .parameter "exponent"
    .parameter "m"

    .prologue
    .line 964
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_e

    .line 965
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "m.signum() <= 0"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 967
    :cond_e
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_2f

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v0, v1

    .line 968
    .local v0, base:Ljava/math/BigInteger;
    :goto_19
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-virtual {p2}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/math/BigInt;->modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1

    .end local v0           #base:Ljava/math/BigInteger;
    :cond_2f
    move-object v0, p0

    .line 967
    goto :goto_19
.end method

.method public multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .parameter "value"

    .prologue
    .line 867
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public negate()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 376
    .local v1, bigInt:Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    .line 377
    .local v2, sign:I
    if-nez v2, :cond_c

    move-object v3, p0

    .line 382
    :goto_b
    return-object v3

    .line 380
    :cond_c
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 381
    .local v0, a:Ljava/math/BigInt;
    neg-int v3, v2

    invoke-virtual {v0, v3}, Ljava/math/BigInt;->setSign(I)V

    .line 382
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_b
.end method

.method public nextProbablePrime()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 1017
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-gez v0, :cond_c

    .line 1018
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "sign < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_c
    invoke-static {p0}, Ljava/math/Primality;->nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public not()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 645
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 646
    invoke-static {p0}, Ljava/math/Logical;->not(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .parameter "value"

    .prologue
    .line 674
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 675
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 676
    invoke-static {p0, p1}, Ljava/math/Logical;->or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigInteger;
    .registers 5
    .parameter "exp"

    .prologue
    .line 876
    if-gez p1, :cond_1b

    .line 877
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exp < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_1b
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/math/BigInt;->exp(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method prepareJavaRepresentation()V
    .registers 6

    .prologue
    .line 321
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_5

    .line 333
    :goto_4
    return-void

    .line 325
    :cond_5
    monitor-enter p0

    .line 326
    :try_start_6
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_f

    .line 327
    monitor-exit p0

    goto :goto_4

    .line 332
    :catchall_c
    move-exception v2

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v2

    .line 329
    :cond_f
    :try_start_f
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->sign()I

    move-result v1

    .line 330
    .local v1, sign:I
    if-eqz v1, :cond_24

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->littleEndianIntsMagnitude()[I

    move-result-object v2

    move-object v0, v2

    .line 331
    .local v0, digits:[I
    :goto_1e
    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 332
    monitor-exit p0

    goto :goto_4

    .line 330
    .end local v0           #digits:[I
    :cond_24
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_c

    move-object v0, v2

    goto :goto_1e
.end method

.method public remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "divisor"

    .prologue
    .line 924
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 925
    .local v0, remainder:Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 926
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public setBit(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 555
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 556
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 557
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 559
    :goto_d
    return-object v0

    :cond_e
    move-object v0, p0

    goto :goto_d
.end method

.method public shiftLeft(I)Ljava/math/BigInteger;
    .registers 5
    .parameter "n"

    .prologue
    .line 455
    if-nez p1, :cond_4

    move-object v1, p0

    .line 468
    :goto_3
    return-object v1

    .line 458
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 459
    .local v0, sign:I
    if-nez v0, :cond_c

    move-object v1, p0

    .line 460
    goto :goto_3

    .line 462
    :cond_c
    if-gtz v0, :cond_10

    if-ltz p1, :cond_1e

    .line 463
    :cond_10
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/math/BigInt;->shift(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_3

    .line 468
    :cond_1e
    neg-int v1, p1

    invoke-static {p0, v1}, Ljava/math/BitLevel;->shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3
.end method

.method shiftLeftOneBit()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 473
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Ljava/math/BitLevel;->shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_7
.end method

.method public shiftRight(I)Ljava/math/BigInteger;
    .registers 3
    .parameter "n"

    .prologue
    .line 438
    neg-int v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public signum()I
    .registers 2

    .prologue
    .line 419
    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_7

    .line 420
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    .line 422
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    goto :goto_6
.end method

.method public subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "value"

    .prologue
    .line 404
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 405
    .local v0, lhs:Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 406
    .local v1, rhs:Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_10

    move-object v2, p0

    .line 409
    :goto_f
    return-object v2

    :cond_10
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInt;->subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_f
.end method

.method public testBit(I)Z
    .registers 9
    .parameter "n"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 509
    if-gez p1, :cond_1d

    .line 510
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 512
    :cond_1d
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    .line 513
    .local v3, sign:I
    if-lez v3, :cond_34

    iget-boolean v4, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v4, :cond_34

    iget-boolean v4, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-nez v4, :cond_34

    .line 514
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInt;->isBitSet(I)Z

    move-result v4

    .line 539
    :goto_33
    return v4

    .line 519
    :cond_34
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 520
    if-nez p1, :cond_45

    .line 521
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_43

    move v4, v6

    goto :goto_33

    :cond_43
    move v4, v5

    goto :goto_33

    .line 523
    :cond_45
    shr-int/lit8 v2, p1, 0x5

    .line 524
    .local v2, intCount:I
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v4, :cond_51

    .line 525
    if-gez v3, :cond_4f

    move v4, v6

    goto :goto_33

    :cond_4f
    move v4, v5

    goto :goto_33

    .line 527
    :cond_51
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v0, v4, v2

    .line 528
    .local v0, digit:I
    and-int/lit8 v4, p1, 0x1f

    shl-int p1, v6, v4

    .line 529
    if-gez v3, :cond_66

    .line 530
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 531
    .local v1, firstNonZeroDigit:I
    if-ge v2, v1, :cond_63

    move v4, v5

    .line 532
    goto :goto_33

    .line 533
    :cond_63
    if-ne v1, v2, :cond_6c

    .line 534
    neg-int v0, v0

    .line 539
    .end local v1           #firstNonZeroDigit:I
    :cond_66
    :goto_66
    and-int v4, v0, p1

    if-eqz v4, :cond_6f

    move v4, v6

    goto :goto_33

    .line 536
    .restart local v1       #firstNonZeroDigit:I
    :cond_6c
    xor-int/lit8 v0, v0, -0x1

    goto :goto_66

    .end local v1           #firstNonZeroDigit:I
    :cond_6f
    move v4, v5

    .line 539
    goto :goto_33
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/math/BigInteger;->twosComplement()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 828
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .parameter "radix"

    .prologue
    .line 841
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    .line 842
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    .line 845
    :goto_c
    return-object v0

    .line 844
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 845
    invoke-static {p0, p1}, Ljava/math/Conversion;->bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .parameter "value"

    .prologue
    .line 689
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 690
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 691
    invoke-static {p0, p1}, Ljava/math/Logical;->xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
