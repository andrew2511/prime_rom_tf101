.class Ljava/math/Primality;
.super Ljava/lang/Object;
.source "Primality.java"


# static fields
.field private static final BIprimes:[Ljava/math/BigInteger;

.field private static final primes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    const/16 v1, 0xac

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    sput-object v1, Ljava/math/Primality;->primes:[I

    .line 53
    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/math/BigInteger;

    sput-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 79
    sget-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    sget-object v2, Ljava/math/Primality;->primes:[I

    aget v2, v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 81
    :cond_26
    return-void

    .line 37
    nop

    :array_28
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
        0x15t 0x1t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
        0x25t 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0x37t 0x1t 0x0t 0x0t
        0x39t 0x1t 0x0t 0x0t
        0x3dt 0x1t 0x0t 0x0t
        0x4bt 0x1t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
        0x5dt 0x1t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
        0x67t 0x1t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
        0x75t 0x1t 0x0t 0x0t
        0x7bt 0x1t 0x0t 0x0t
        0x7ft 0x1t 0x0t 0x0t
        0x85t 0x1t 0x0t 0x0t
        0x8dt 0x1t 0x0t 0x0t
        0x91t 0x1t 0x0t 0x0t
        0x99t 0x1t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0xa5t 0x1t 0x0t 0x0t
        0xaft 0x1t 0x0t 0x0t
        0xb1t 0x1t 0x0t 0x0t
        0xb7t 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xc1t 0x1t 0x0t 0x0t
        0xc9t 0x1t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
        0xcft 0x1t 0x0t 0x0t
        0xd3t 0x1t 0x0t 0x0t
        0xdft 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0xebt 0x1t 0x0t 0x0t
        0xf3t 0x1t 0x0t 0x0t
        0xf7t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0xbt 0x2t 0x0t 0x0t
        0x1dt 0x2t 0x0t 0x0t
        0x23t 0x2t 0x0t 0x0t
        0x2dt 0x2t 0x0t 0x0t
        0x33t 0x2t 0x0t 0x0t
        0x39t 0x2t 0x0t 0x0t
        0x3bt 0x2t 0x0t 0x0t
        0x41t 0x2t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
        0x51t 0x2t 0x0t 0x0t
        0x57t 0x2t 0x0t 0x0t
        0x59t 0x2t 0x0t 0x0t
        0x5ft 0x2t 0x0t 0x0t
        0x65t 0x2t 0x0t 0x0t
        0x69t 0x2t 0x0t 0x0t
        0x6bt 0x2t 0x0t 0x0t
        0x77t 0x2t 0x0t 0x0t
        0x81t 0x2t 0x0t 0x0t
        0x83t 0x2t 0x0t 0x0t
        0x87t 0x2t 0x0t 0x0t
        0x8dt 0x2t 0x0t 0x0t
        0x93t 0x2t 0x0t 0x0t
        0x95t 0x2t 0x0t 0x0t
        0xa1t 0x2t 0x0t 0x0t
        0xa5t 0x2t 0x0t 0x0t
        0xabt 0x2t 0x0t 0x0t
        0xb3t 0x2t 0x0t 0x0t
        0xbdt 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
        0xcft 0x2t 0x0t 0x0t
        0xd7t 0x2t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xe3t 0x2t 0x0t 0x0t
        0xe7t 0x2t 0x0t 0x0t
        0xeft 0x2t 0x0t 0x0t
        0xf5t 0x2t 0x0t 0x0t
        0xf9t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0x5t 0x3t 0x0t 0x0t
        0x13t 0x3t 0x0t 0x0t
        0x1dt 0x3t 0x0t 0x0t
        0x29t 0x3t 0x0t 0x0t
        0x2bt 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x37t 0x3t 0x0t 0x0t
        0x3bt 0x3t 0x0t 0x0t
        0x3dt 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
        0x55t 0x3t 0x0t 0x0t
        0x59t 0x3t 0x0t 0x0t
        0x5bt 0x3t 0x0t 0x0t
        0x5ft 0x3t 0x0t 0x0t
        0x6dt 0x3t 0x0t 0x0t
        0x71t 0x3t 0x0t 0x0t
        0x73t 0x3t 0x0t 0x0t
        0x77t 0x3t 0x0t 0x0t
        0x8bt 0x3t 0x0t 0x0t
        0x8ft 0x3t 0x0t 0x0t
        0x97t 0x3t 0x0t 0x0t
        0xa1t 0x3t 0x0t 0x0t
        0xa9t 0x3t 0x0t 0x0t
        0xadt 0x3t 0x0t 0x0t
        0xb3t 0x3t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0xc7t 0x3t 0x0t 0x0t
        0xcbt 0x3t 0x0t 0x0t
        0xd1t 0x3t 0x0t 0x0t
        0xd7t 0x3t 0x0t 0x0t
        0xdft 0x3t 0x0t 0x0t
        0xe5t 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf5t 0x3t 0x0t 0x0t
        0xfbt 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 14
    .parameter "n"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    const/16 v0, 0x400

    .line 96
    .local v0, gapSize:I
    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    new-array v5, v9, [I

    .line 97
    .local v5, modules:[I
    new-array v2, v0, [Z

    .line 98
    .local v2, isDivisible:[Z
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 100
    .local v6, ni:Ljava/math/BigInt;
    invoke-virtual {v6}, Ljava/math/BigInt;->bitLength()I

    move-result v9

    const/16 v10, 0xa

    if-gt v9, v10, :cond_35

    .line 101
    invoke-virtual {v6}, Ljava/math/BigInt;->longInt()J

    move-result-wide v9

    long-to-int v4, v9

    .line 102
    .local v4, l:I
    sget-object v9, Ljava/math/Primality;->primes:[I

    sget-object v10, Ljava/math/Primality;->primes:[I

    array-length v10, v10

    sub-int/2addr v10, v12

    aget v9, v9, v10

    if-ge v4, v9, :cond_35

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    if-lt v4, v9, :cond_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 104
    :cond_30
    sget-object v9, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    aget-object v9, v9, v1

    .line 143
    .end local v4           #l:I
    :goto_34
    return-object v9

    .line 108
    .end local v1           #i:I
    :cond_35
    invoke-virtual {v6}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v8

    .line 109
    .local v8, startPoint:Ljava/math/BigInt;
    new-instance v7, Ljava/math/BigInt;

    invoke-direct {v7}, Ljava/math/BigInt;-><init>()V

    .line 112
    .local v7, probPrime:Ljava/math/BigInt;
    const/4 v9, 0x2

    invoke-static {v6, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 121
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_49
    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5f

    .line 122
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v9

    sub-int/2addr v9, v0

    aput v9, v5, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 147
    .local v3, j:I
    :cond_5c
    invoke-virtual {v8, v0}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 127
    .end local v3           #j:I
    :cond_5f
    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 129
    const/4 v1, 0x0

    :goto_63
    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    if-ge v1, v9, :cond_8d

    .line 130
    aget v9, v5, v1

    add-int/2addr v9, v0

    sget-object v10, Ljava/math/Primality;->primes:[I

    aget v10, v10, v1

    rem-int/2addr v9, v10

    aput v9, v5, v1

    .line 131
    aget v9, v5, v1

    if-nez v9, :cond_81

    move v3, v11

    .line 132
    .restart local v3       #j:I
    :goto_77
    if-ge v3, v0, :cond_8a

    .line 133
    aput-boolean v12, v2, v3

    .line 132
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    add-int/2addr v3, v9

    goto :goto_77

    .line 131
    .end local v3           #j:I
    :cond_81
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    aget v10, v5, v1

    sub-int/2addr v9, v10

    move v3, v9

    goto :goto_77

    .line 129
    .restart local v3       #j:I
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 138
    .end local v3           #j:I
    :cond_8d
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_8e
    if-ge v3, v0, :cond_5c

    .line 139
    aget-boolean v9, v2, v3

    if-nez v9, :cond_a8

    .line 140
    invoke-virtual {v7, v8}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    .line 141
    invoke-virtual {v7, v3}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 142
    const/16 v9, 0x64

    invoke-virtual {v7, v9}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 143
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_34

    .line 138
    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e
.end method
