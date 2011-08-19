.class public final Ljava/lang/IntegralToString;
.super Ljava/lang/Object;
.source "IntegralToString.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final DIGITS:[C

.field private static final MOD_10_TABLE:[C

.field private static final ONES:[C

.field private static final SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

.field private static final TENS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x64

    .line 46
    new-instance v0, Ljava/lang/IntegralToString$1;

    invoke-direct {v0}, Ljava/lang/IntegralToString$1;-><init>()V

    sput-object v0, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    .line 65
    new-array v0, v1, [C

    fill-array-data v0, :array_32

    sput-object v0, Ljava/lang/IntegralToString;->TENS:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_9a

    sput-object v0, Ljava/lang/IntegralToString;->ONES:[C

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_102

    sput-object v0, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    .line 104
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_116

    sput-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    return-void

    .line 65
    :array_32
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 79
    :array_9a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    .line 97
    :array_102
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
    .end array-data

    .line 104
    :array_116
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static appendInt(Ljava/lang/AbstractStringBuilder;I)V
    .registers 2
    .parameter "sb"
    .parameter "i"

    .prologue
    .line 166
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static appendLong(Ljava/lang/AbstractStringBuilder;J)V
    .registers 3
    .parameter "sb"
    .parameter "l"

    .prologue
    .line 300
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    .line 301
    return-void
.end method

.method private static convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;
    .registers 16
    .parameter "sb"
    .parameter "i"

    .prologue
    const/16 v8, 0xa

    const/16 v13, 0x2d

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, negative:Z
    const/4 v5, 0x0

    .line 176
    .local v5, quickResult:Ljava/lang/String;
    if-gez p1, :cond_51

    .line 177
    const/4 v3, 0x1

    .line 178
    neg-int p1, p1

    .line 179
    const/16 v7, 0x64

    if-ge p1, v7, :cond_15

    .line 180
    if-gez p1, :cond_1e

    .line 182
    const-string v5, "-2147483648"

    .line 200
    :cond_15
    :goto_15
    if-eqz v5, :cond_85

    .line 201
    if-eqz p0, :cond_83

    .line 202
    invoke-virtual {p0, v5}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 203
    const/4 v7, 0x0

    .line 239
    :goto_1d
    return-object v7

    .line 184
    :cond_1e
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    .line 185
    if-nez v5, :cond_15

    .line 186
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_3a

    new-array v8, v12, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    :goto_37
    aput-object v5, v7, p1

    goto :goto_15

    :cond_3a
    const/4 v8, 0x3

    new-array v8, v8, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v12

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_37

    .line 192
    :cond_51
    const/16 v7, 0x64

    if-ge p1, v7, :cond_15

    .line 193
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    .line 194
    if-nez v5, :cond_15

    .line 195
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_6f

    new-array v8, v11, [C

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    :goto_6c
    aput-object v5, v7, p1

    goto :goto_15

    :cond_6f
    new-array v8, v12, [C

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_6c

    :cond_83
    move-object v7, v5

    .line 205
    goto :goto_1d

    .line 208
    :cond_85
    const/16 v1, 0xb

    .line 209
    .local v1, bufLen:I
    if-eqz p0, :cond_b6

    sget-object v7, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    .line 210
    .local v0, buf:[C
    :goto_92
    move v2, v1

    .line 213
    .local v2, cursor:I
    :goto_93
    const/high16 v7, 0x1

    if-lt p1, v7, :cond_ba

    .line 215
    const-wide/32 v7, 0x51eb851f

    int-to-long v9, p1

    mul-long/2addr v7, v9

    const/16 v9, 0x25

    ushr-long/2addr v7, v9

    long-to-int v4, v7

    .line 216
    .local v4, q:I
    mul-int/lit8 v7, v4, 0x64

    sub-int v6, p1, v7

    .line 217
    .local v6, r:I
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 218
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 219
    move p1, v4

    .line 220
    goto :goto_93

    .line 209
    .end local v0           #buf:[C
    .end local v2           #cursor:I
    .end local v4           #q:I
    .end local v6           #r:I
    :cond_b6
    new-array v7, v1, [C

    move-object v0, v7

    goto :goto_92

    .line 223
    .restart local v0       #buf:[C
    .restart local v2       #cursor:I
    :cond_ba
    :goto_ba
    if-eqz p1, :cond_d0

    .line 225
    const v7, 0xcccd

    mul-int/2addr v7, p1

    ushr-int/lit8 v4, v7, 0x13

    .line 226
    .restart local v4       #q:I
    mul-int/lit8 v7, v4, 0xa

    sub-int v6, p1, v7

    .line 227
    .restart local v6       #r:I
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 228
    move p1, v4

    .line 229
    goto :goto_ba

    .line 231
    .end local v4           #q:I
    .end local v6           #r:I
    :cond_d0
    if-eqz v3, :cond_d6

    .line 232
    add-int/lit8 v2, v2, -0x1

    aput-char v13, v0, v2

    .line 235
    :cond_d6
    if-eqz p0, :cond_e0

    .line 236
    sub-int v7, v1, v2

    invoke-virtual {p0, v0, v2, v7}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    .line 237
    const/4 v7, 0x0

    goto/16 :goto_1d

    .line 239
    :cond_e0
    new-instance v7, Ljava/lang/String;

    sub-int v8, v1, v2

    invoke-direct {v7, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_1d
.end method

.method private static convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;
    .registers 12
    .parameter "sb"
    .parameter "n"

    .prologue
    .line 308
    long-to-int v0, p1

    .line 309
    .local v0, i:I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_b

    .line 310
    invoke-static {p0, v0}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object p0

    .line 382
    .end local v0           #i:I
    .end local p0
    :goto_a
    return-object p0

    .line 313
    .restart local v0       #i:I
    .restart local p0
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_25

    .end local v0           #i:I
    const/4 v0, 0x1

    move v5, v0

    .line 314
    .local v5, negative:Z
    :goto_13
    if-eqz v5, :cond_2a

    .line 315
    neg-long p1, p1

    .line 316
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2a

    .line 318
    const-string v0, "-9223372036854775808"

    .line 319
    .local v0, quickResult:Ljava/lang/String;
    if-eqz p0, :cond_28

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 321
    const/4 p0, 0x0

    goto :goto_a

    .line 313
    .end local v0           #quickResult:Ljava/lang/String;
    .end local v5           #negative:Z
    :cond_25
    const/4 v0, 0x0

    move v5, v0

    goto :goto_13

    .restart local v0       #quickResult:Ljava/lang/String;
    .restart local v5       #negative:Z
    :cond_28
    move-object p0, v0

    .line 323
    goto :goto_a

    .line 327
    .end local v0           #quickResult:Ljava/lang/String;
    :cond_2a
    const/16 v1, 0x14

    .line 328
    .local v1, bufLen:I
    if-eqz p0, :cond_4d

    sget-object v0, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 330
    .local v0, buf:[C
    :goto_36
    const-wide/32 v2, 0x3b9aca00

    rem-long v2, p1, v2

    long-to-int v3, v2

    .line 331
    .local v3, low:I
    invoke-static {v0, v1, v3}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v2

    .line 334
    .local v2, cursor:I
    :goto_40
    const/16 v4, 0x9

    sub-int v4, v1, v4

    if-eq v2, v4, :cond_50

    .line 335
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x30

    aput-char v4, v0, v2

    goto :goto_40

    .line 328
    .end local v0           #buf:[C
    .end local v2           #cursor:I
    .end local v3           #low:I
    :cond_4d
    new-array v0, v1, [C

    goto :goto_36

    .line 343
    .restart local v0       #buf:[C
    .restart local v2       #cursor:I
    .restart local v3       #low:I
    :cond_50
    int-to-long v3, v3

    sub-long/2addr p1, v3

    const/16 v3, 0x9

    ushr-long/2addr p1, v3

    const-wide v3, -0x71b831bdc5d16393L

    mul-long/2addr p1, v3

    .line 351
    const-wide v3, -0x100000000L

    and-long/2addr v3, p1

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_7c

    .line 352
    .end local v3           #low:I
    long-to-int v3, p1

    invoke-static {v0, v2, v3}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v2

    .line 375
    :goto_6c
    if-eqz v5, :cond_74

    .line 376
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x2d

    aput-char v3, v0, v2

    .line 378
    :cond_74
    if-eqz p0, :cond_b1

    .line 379
    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    .line 380
    .end local v1           #bufLen:I
    const/4 p0, 0x0

    goto :goto_a

    .line 357
    .restart local v1       #bufLen:I
    :cond_7c
    long-to-int v4, p1

    .line 358
    .local v4, lo32:I
    const/16 v3, 0x20

    ushr-long v6, p1, v3

    long-to-int v3, v6

    .line 361
    .local v3, hi32:I
    sget-object v6, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    const v7, 0x19999999

    mul-int/2addr v7, v4

    ushr-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    ushr-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v7

    ushr-int/lit8 v4, v4, 0x1c

    aget-char v4, v6, v4

    .line 364
    .local v4, midDigit:I
    shl-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    .line 365
    .end local v4           #midDigit:I
    .local v3, midDigit:I
    if-gez v3, :cond_9a

    .line 366
    add-int/lit8 v3, v3, 0xa

    .line 368
    :cond_9a
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v4, v4, v3

    aput-char v4, v0, v2

    .line 371
    int-to-long v3, v3

    sub-long v3, p1, v3

    const/4 v6, 0x1

    ushr-long/2addr v3, v6

    long-to-int v3, v3

    const v4, -0x33333333

    mul-int/2addr v3, v4

    .line 372
    .local v3, rest:I
    invoke-static {v0, v2, v3}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v2

    goto :goto_6c

    .line 382
    .end local v3           #rest:I
    :cond_b1
    new-instance p0, Ljava/lang/String;

    .end local p0
    sub-int/2addr v1, v2

    invoke-direct {p0, v2, v1, v0}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_a
.end method

.method private static intIntoCharArray([CII)I
    .registers 9
    .parameter "buf"
    .parameter "cursor"
    .parameter "n"

    .prologue
    .line 395
    :goto_0
    const/high16 v2, -0x1

    and-int/2addr v2, p2

    if-eqz v2, :cond_26

    .line 403
    const-wide/32 v2, 0x51eb851f

    ushr-int/lit8 v4, p2, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const/16 v4, 0x23

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    .line 404
    .local v0, q:I
    mul-int/lit8 v2, v0, 0x64

    sub-int v1, p2, v2

    .line 405
    .local v1, r:I
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 406
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 407
    move p2, v0

    .line 408
    goto :goto_0

    .line 411
    .end local v0           #q:I
    .end local v1           #r:I
    :cond_26
    :goto_26
    if-eqz p2, :cond_3c

    .line 413
    const v2, 0xcccd

    mul-int/2addr v2, p2

    ushr-int/lit8 v0, v2, 0x13

    .line 414
    .restart local v0       #q:I
    mul-int/lit8 v2, v0, 0xa

    sub-int v1, p2, v2

    .line 415
    .restart local v1       #r:I
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 416
    move p2, v0

    .line 417
    goto :goto_26

    .line 418
    .end local v0           #q:I
    .end local v1           #r:I
    :cond_3c
    return p1
.end method

.method public static intToBinaryString(I)Ljava/lang/String;
    .registers 6
    .parameter "i"

    .prologue
    .line 422
    const/16 v1, 0x20

    .line 423
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 424
    .local v0, buf:[C
    move v2, v1

    .line 427
    .local v2, cursor:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x1

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 428
    ushr-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_5

    .line 430
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToHexString(I)Ljava/lang/String;
    .registers 6
    .parameter "i"

    .prologue
    .line 451
    const/16 v1, 0x8

    .line 452
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 453
    .local v0, buf:[C
    move v2, v1

    .line 456
    .local v2, cursor:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 457
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_5

    .line 459
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToOctalString(I)Ljava/lang/String;
    .registers 6
    .parameter "i"

    .prologue
    .line 480
    const/16 v1, 0xb

    .line 481
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 482
    .local v0, buf:[C
    move v2, v1

    .line 485
    .local v2, cursor:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x7

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 486
    ushr-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_5

    .line 488
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToString(II)Ljava/lang/String;
    .registers 9
    .parameter "i"
    .parameter "radix"

    .prologue
    .line 118
    const/4 v5, 0x2

    if-lt p1, v5, :cond_7

    const/16 v5, 0x24

    if-le p1, v5, :cond_9

    .line 119
    :cond_7
    const/16 p1, 0xa

    .line 121
    :cond_9
    const/16 v5, 0xa

    if-ne p1, v5, :cond_12

    .line 122
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    :goto_11
    return-object v5

    .line 131
    :cond_12
    const/4 v3, 0x0

    .line 132
    .local v3, negative:Z
    if-gez p0, :cond_40

    .line 133
    const/4 v3, 0x1

    .line 138
    :goto_16
    const/16 v5, 0x8

    if-ge p1, v5, :cond_42

    const/16 v5, 0x21

    move v1, v5

    .line 139
    .local v1, bufLen:I
    :goto_1d
    new-array v0, v1, [C

    .line 140
    .local v0, buf:[C
    move v2, v1

    .line 143
    .local v2, cursor:I
    :cond_20
    div-int v4, p0, p1

    .line 144
    .local v4, q:I
    add-int/lit8 v2, v2, -0x1

    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    mul-int v6, p1, v4

    sub-int/2addr v6, p0

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 145
    move p0, v4

    .line 146
    if-nez p0, :cond_20

    .line 148
    if-eqz v3, :cond_38

    .line 149
    add-int/lit8 v2, v2, -0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v2

    .line 152
    :cond_38
    new-instance v5, Ljava/lang/String;

    sub-int v6, v1, v2

    invoke-direct {v5, v2, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_11

    .line 135
    .end local v0           #buf:[C
    .end local v1           #bufLen:I
    .end local v2           #cursor:I
    .end local v4           #q:I
    :cond_40
    neg-int p0, p0

    goto :goto_16

    .line 138
    :cond_42
    const/16 v5, 0xc

    move v1, v5

    goto :goto_1d
.end method

.method public static longToBinaryString(J)Ljava/lang/String;
    .registers 10
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x0

    .line 434
    long-to-int v3, p0

    .line 435
    .local v3, i:I
    cmp-long v4, p0, v6

    if-ltz v4, :cond_11

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_11

    .line 436
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    :goto_10
    return-object v4

    .line 439
    :cond_11
    const/16 v1, 0x40

    .line 440
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 441
    .local v0, buf:[C
    move v2, v1

    .line 444
    .local v2, cursor:I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 445
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_16

    .line 447
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_10
.end method

.method public static longToHexString(J)Ljava/lang/String;
    .registers 10
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x0

    .line 463
    long-to-int v3, p0

    .line 464
    .local v3, i:I
    cmp-long v4, p0, v6

    if-ltz v4, :cond_11

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_11

    .line 465
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 476
    :goto_10
    return-object v4

    .line 468
    :cond_11
    const/16 v1, 0x10

    .line 469
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 470
    .local v0, buf:[C
    move v2, v1

    .line 473
    .local v2, cursor:I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 474
    const/4 v4, 0x4

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_16

    .line 476
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_10
.end method

.method public static longToOctalString(J)Ljava/lang/String;
    .registers 10
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x0

    .line 492
    long-to-int v3, p0

    .line 493
    .local v3, i:I
    cmp-long v4, p0, v6

    if-ltz v4, :cond_11

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_11

    .line 494
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v4

    .line 504
    :goto_10
    return-object v4

    .line 496
    :cond_11
    const/16 v1, 0x16

    .line 497
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 498
    .local v0, buf:[C
    move v2, v1

    .line 501
    .local v2, cursor:I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x7

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 502
    const/4 v4, 0x3

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_16

    .line 504
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_10
.end method

.method public static longToString(J)Ljava/lang/String;
    .registers 3
    .parameter "l"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static longToString(JI)Ljava/lang/String;
    .registers 15
    .parameter "v"
    .parameter "radix"

    .prologue
    const-wide/16 v10, 0x0

    .line 247
    long-to-int v3, p0

    .line 248
    .local v3, i:I
    int-to-long v7, v3

    cmp-long v7, v7, p0

    if-nez v7, :cond_d

    .line 249
    invoke-static {v3, p2}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v7

    .line 286
    :goto_c
    return-object v7

    .line 252
    :cond_d
    const/4 v7, 0x2

    if-lt p2, v7, :cond_14

    const/16 v7, 0x24

    if-le p2, v7, :cond_16

    .line 253
    :cond_14
    const/16 p2, 0xa

    .line 255
    :cond_16
    const/16 v7, 0xa

    if-ne p2, v7, :cond_1f

    .line 256
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    .line 265
    :cond_1f
    const/4 v4, 0x0

    .line 266
    .local v4, negative:Z
    cmp-long v7, p0, v10

    if-gez v7, :cond_53

    .line 267
    const/4 v4, 0x1

    .line 272
    :goto_25
    const/16 v7, 0x8

    if-ge p2, v7, :cond_55

    const/16 v7, 0x41

    move v1, v7

    .line 273
    .local v1, bufLen:I
    :goto_2c
    new-array v0, v1, [C

    .line 274
    .local v0, buf:[C
    move v2, v1

    .line 277
    .local v2, cursor:I
    :cond_2f
    int-to-long v7, p2

    div-long v5, p0, v7

    .line 278
    .local v5, q:J
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    int-to-long v8, p2

    mul-long/2addr v8, v5

    sub-long/2addr v8, p0

    long-to-int v8, v8

    aget-char v7, v7, v8

    aput-char v7, v0, v2

    .line 279
    move-wide p0, v5

    .line 280
    cmp-long v7, p0, v10

    if-nez v7, :cond_2f

    .line 282
    if-eqz v4, :cond_4b

    .line 283
    add-int/lit8 v2, v2, -0x1

    const/16 v7, 0x2d

    aput-char v7, v0, v2

    .line 286
    :cond_4b
    new-instance v7, Ljava/lang/String;

    sub-int v8, v1, v2

    invoke-direct {v7, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_c

    .line 269
    .end local v0           #buf:[C
    .end local v1           #bufLen:I
    .end local v2           #cursor:I
    .end local v5           #q:J
    :cond_53
    neg-long p0, p0

    goto :goto_25

    .line 272
    :cond_55
    const/16 v7, 0x17

    move v1, v7

    goto :goto_2c
.end method

.method private static varargs stringOf([C)Ljava/lang/String;
    .registers 4
    .parameter "args"

    .prologue
    .line 514
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>(II[C)V

    return-object v0
.end method
