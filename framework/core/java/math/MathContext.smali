.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DECIMAL128:Ljava/math/MathContext; = null

.field public static final DECIMAL32:Ljava/math/MathContext; = null

.field public static final DECIMAL64:Ljava/math/MathContext; = null

.field public static final UNLIMITED:Ljava/math/MathContext; = null

.field private static final chPrecision:[C = null

.field private static final chRoundingMode:[C = null

.field private static final serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field private precision:I

.field private roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x22

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 44
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    .line 52
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x10

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 59
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_3e

    sput-object v0, Ljava/math/MathContext;->chPrecision:[C

    .line 96
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    sput-object v0, Ljava/math/MathContext;->chRoundingMode:[C

    return-void

    .line 85
    nop

    :array_3e
    .array-data 0x2
        0x70t 0x0t
        0x72t 0x0t
        0x65t 0x0t
        0x63t 0x0t
        0x69t 0x0t
        0x73t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x6et 0x0t
        0x3dt 0x0t
    .end array-data

    .line 96
    :array_4c
    .array-data 0x2
        0x72t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x6et 0x0t
        0x64t 0x0t
        0x69t 0x0t
        0x6et 0x0t
        0x67t 0x0t
        0x4dt 0x0t
        0x6ft 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x3dt 0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "precision"

    .prologue
    .line 111
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/math/RoundingMode;)V
    .registers 5
    .parameter "precision"
    .parameter "roundingMode"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-gez p1, :cond_d

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "precision < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_d
    if-nez p2, :cond_17

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_17
    iput p1, p0, Ljava/math/MathContext;->precision:I

    .line 137
    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter "val"

    .prologue
    const/16 v7, 0xa

    const/4 v6, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 160
    .local v0, charVal:[C
    array-length v4, v0

    const/16 v5, 0x1b

    if-lt v4, v5, :cond_14

    array-length v4, v0

    const/16 v5, 0x2d

    if-le v4, v5, :cond_1c

    .line 161
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    sget-object v4, Ljava/math/MathContext;->chPrecision:[C

    array-length v4, v4

    if-ge v2, v4, :cond_2d

    aget-char v4, v0, v2

    sget-object v5, Ljava/math/MathContext;->chPrecision:[C

    aget-char v5, v5, v2

    if-ne v4, v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 168
    :cond_2d
    sget-object v4, Ljava/math/MathContext;->chPrecision:[C

    array-length v4, v4

    if-ge v2, v4, :cond_3a

    .line 169
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_3a
    aget-char v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 173
    .local v1, digit:I
    if-ne v1, v6, :cond_4a

    .line 174
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_4a
    iput v1, p0, Ljava/math/MathContext;->precision:I

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 182
    :goto_4e
    aget-char v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 183
    if-ne v1, v6, :cond_79

    .line 184
    aget-char v4, v0, v2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_71

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, j:I
    :goto_5f
    sget-object v4, Ljava/math/MathContext;->chRoundingMode:[C

    array-length v4, v4

    if-ge v3, v4, :cond_8f

    aget-char v4, v0, v2

    sget-object v5, Ljava/math/MathContext;->chRoundingMode:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_8f

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 190
    .end local v3           #j:I
    :cond_71
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_79
    iget v4, p0, Ljava/math/MathContext;->precision:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v1

    iput v4, p0, Ljava/math/MathContext;->precision:I

    .line 194
    iget v4, p0, Ljava/math/MathContext;->precision:I

    if-gez v4, :cond_8c

    .line 195
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    .line 198
    goto :goto_4e

    .line 205
    .restart local v3       #j:I
    :cond_8f
    sget-object v4, Ljava/math/MathContext;->chRoundingMode:[C

    array-length v4, v4

    if-ge v3, v4, :cond_9c

    .line 206
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad string format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_9c
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    move-result-object v4

    iput-object v4, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 211
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 302
    iget v0, p0, Ljava/math/MathContext;->precision:I

    if-gez v0, :cond_f

    .line 303
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "precision < 0"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_f
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_1b

    .line 306
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "x"

    .prologue
    .line 259
    instance-of v1, p1, Ljava/math/MathContext;

    if-eqz v1, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/math/MathContext;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    iget v2, p0, Ljava/math/MathContext;->precision:I

    if-ne v1, v2, :cond_1c

    check-cast p1, Ljava/math/MathContext;

    .end local p1
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    iget-object v2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getPrecision()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Ljava/math/MathContext;->precision:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 272
    iget v0, p0, Ljava/math/MathContext;->precision:I

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " roundingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
