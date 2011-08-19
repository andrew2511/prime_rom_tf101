.class public final Lcom/mobipocket/common/parser/UnicodeWestern;
.super Ljava/lang/Object;
.source "UnicodeWestern.java"


# static fields
.field public static final HCC_Blank:B = 0x4t

.field public static final HCC_Consonant:B = 0x1t

.field public static final HCC_Punctuation:B = 0x3t

.field public static final HCC_Unknown:B = 0x0t

.field public static final HCC_Vowel:B = 0x2t

.field static final WINDOWS_1252:[C

.field static final kgUnicodeDescription:[B

.field static final unicodeToWestern:[[S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x2

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->kgUnicodeDescription:[B

    .line 287
    new-array v0, v4, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->WINDOWS_1252:[C

    .line 362
    const/16 v0, 0x21

    new-array v0, v0, [[S

    const/4 v1, 0x0

    new-array v2, v3, [S

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [S

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [S

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [S

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [S

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [S

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [S

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [S

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [S

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [S

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [S

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [S

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [S

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [S

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [S

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [S

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [S

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [S

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [S

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [S

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [S

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [S

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [S

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [S

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [S

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [S

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [S

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [S

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [S

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [S

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [S

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [S

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v3, [S

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->unicodeToWestern:[[S

    return-void

    .line 20
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x2t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x1t
        0x3t
        0x2t
        0x0t
        0x1t
        0x2t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    .line 287
    :array_1
    .array-data 0x2
        0xact 0x20t
        0x81t 0x0t
        0x1at 0x20t
        0x92t 0x1t
        0x1et 0x20t
        0x26t 0x20t
        0x20t 0x20t
        0x21t 0x20t
        0xc6t 0x2t
        0x30t 0x20t
        0x60t 0x1t
        0x39t 0x20t
        0x52t 0x1t
        0x8dt 0x0t
        0x7dt 0x1t
        0x8ft 0x0t
        0x90t 0x0t
        0x18t 0x20t
        0x19t 0x20t
        0x1ct 0x20t
        0x1dt 0x20t
        0x22t 0x20t
        0x13t 0x20t
        0x14t 0x20t
        0xdct 0x2t
        0x22t 0x21t
        0x61t 0x1t
        0x3at 0x20t
        0x53t 0x1t
        0x9dt 0x0t
        0x7et 0x1t
        0x78t 0x1t
    .end array-data

    .line 362
    :array_2
    .array-data 0x2
        0x81t 0x0t
        0x81t 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x8dt 0x0t
        0x8dt 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x8ft 0x0t
        0x8ft 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x90t 0x0t
        0x90t 0x0t
    .end array-data

    :array_6
    .array-data 0x2
        0x9dt 0x0t
        0x9dt 0x0t
    .end array-data

    :array_7
    .array-data 0x2
        0x52t 0x1t
        0x8ct 0x0t
    .end array-data

    :array_8
    .array-data 0x2
        0x53t 0x1t
        0x9ct 0x0t
    .end array-data

    :array_9
    .array-data 0x2
        0x60t 0x1t
        0x8at 0x0t
    .end array-data

    :array_a
    .array-data 0x2
        0x61t 0x1t
        0x9at 0x0t
    .end array-data

    :array_b
    .array-data 0x2
        0x78t 0x1t
        0x9ft 0x0t
    .end array-data

    :array_c
    .array-data 0x2
        0x7dt 0x1t
        0x8et 0x0t
    .end array-data

    :array_d
    .array-data 0x2
        0x7et 0x1t
        0x9et 0x0t
    .end array-data

    :array_e
    .array-data 0x2
        0x92t 0x1t
        0x83t 0x0t
    .end array-data

    :array_f
    .array-data 0x2
        0xc6t 0x2t
        0x88t 0x0t
    .end array-data

    :array_10
    .array-data 0x2
        0xdct 0x2t
        0x98t 0x0t
    .end array-data

    :array_11
    .array-data 0x2
        0x11t 0x20t
        0x2dt 0x0t
    .end array-data

    :array_12
    .array-data 0x2
        0x13t 0x20t
        0x96t 0x0t
    .end array-data

    :array_13
    .array-data 0x2
        0x14t 0x20t
        0x97t 0x0t
    .end array-data

    :array_14
    .array-data 0x2
        0x18t 0x20t
        0x91t 0x0t
    .end array-data

    :array_15
    .array-data 0x2
        0x19t 0x20t
        0x92t 0x0t
    .end array-data

    :array_16
    .array-data 0x2
        0x1at 0x20t
        0x82t 0x0t
    .end array-data

    :array_17
    .array-data 0x2
        0x1ct 0x20t
        0x93t 0x0t
    .end array-data

    :array_18
    .array-data 0x2
        0x1dt 0x20t
        0x94t 0x0t
    .end array-data

    :array_19
    .array-data 0x2
        0x1et 0x20t
        0x84t 0x0t
    .end array-data

    :array_1a
    .array-data 0x2
        0x20t 0x20t
        0x86t 0x0t
    .end array-data

    :array_1b
    .array-data 0x2
        0x21t 0x20t
        0x87t 0x0t
    .end array-data

    :array_1c
    .array-data 0x2
        0x22t 0x20t
        0x95t 0x0t
    .end array-data

    :array_1d
    .array-data 0x2
        0x26t 0x20t
        0x85t 0x0t
    .end array-data

    :array_1e
    .array-data 0x2
        0x30t 0x20t
        0x89t 0x0t
    .end array-data

    :array_1f
    .array-data 0x2
        0x39t 0x20t
        0x8bt 0x0t
    .end array-data

    :array_20
    .array-data 0x2
        0x3at 0x20t
        0x9bt 0x0t
    .end array-data

    :array_21
    .array-data 0x2
        0xact 0x20t
        0x80t 0x0t
    .end array-data

    :array_22
    .array-data 0x2
        0x22t 0x21t
        0x99t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToHex(C)I
    .locals 4
    .parameter "car"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 519
    if-lt p0, v3, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    .line 521
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    .line 531
    :goto_0
    return v0

    .line 523
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 525
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 527
    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 529
    sub-int v0, p0, v1

    goto :goto_0

    .line 531
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static convert(Ljava/lang/String;)[B
    .locals 6
    .parameter "unicode"

    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 446
    .local v3, size:I
    new-array v2, v3, [B

    .line 447
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 449
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v0, v4

    .line 451
    .local v0, c:S
    if-ltz v0, :cond_0

    const/16 v4, 0x7f

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0xa0

    if-lt v0, v4, :cond_2

    const/16 v4, 0xff

    if-gt v0, v4, :cond_2

    .line 454
    :cond_1
    int-to-byte v4, v0

    aput-byte v4, v2, v1

    .line 447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_2
    sget-object v4, Lcom/mobipocket/common/parser/UnicodeWestern;->unicodeToWestern:[[S

    const/16 v5, 0x20

    invoke-static {v0, v4, v5}, Lcom/mobipocket/common/parser/UnicodeWestern;->find_u2s(S[[SB)B

    move-result v4

    aput-byte v4, v2, v1

    goto :goto_1

    .line 461
    .end local v0           #c:S
    :cond_3
    return-object v2
.end method

.method public static convertToChar([BII)[C
    .locals 5
    .parameter "windows1252"
    .parameter "begin"
    .parameter "size"

    .prologue
    .line 419
    new-array v2, p2, [C

    .line 421
    .local v2, result:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 423
    add-int v3, v1, p1

    aget-byte v0, p0, v3

    .line 425
    .local v0, b:B
    const/16 v3, -0x60

    if-lt v0, v3, :cond_0

    .line 427
    int-to-short v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 421
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_0
    sget-object v3, Lcom/mobipocket/common/parser/UnicodeWestern;->WINDOWS_1252:[C

    add-int/lit16 v4, v0, 0x80

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    goto :goto_1

    .line 435
    .end local v0           #b:B
    :cond_1
    return-object v2
.end method

.method public static find_u2s(S[[SB)B
    .locals 7
    .parameter "a"
    .parameter "unicodeToSbcs"
    .parameter "defaultChar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    const/4 v3, 0x0

    .line 485
    .local v3, i:I
    const/4 v2, 0x0

    .line 487
    .local v2, found:Z
    const/4 v0, 0x0

    .line 488
    .local v0, beg:I
    array-length v4, p1

    sub-int v1, v4, v6

    .line 490
    .local v1, end:I
    aget-object v4, p1, v0

    aget-short v4, v4, v5

    if-ne p0, v4, :cond_0

    .line 491
    aget-object v4, p1, v0

    aget-short v4, v4, v6

    int-to-byte v4, v4

    .line 509
    :goto_0
    return v4

    .line 492
    :cond_0
    aget-object v4, p1, v1

    aget-short v4, v4, v5

    if-ne p0, v4, :cond_1

    .line 493
    aget-object v4, p1, v1

    aget-short v4, v4, v6

    int-to-byte v4, v4

    goto :goto_0

    .line 495
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_4

    .line 497
    add-int v4, v0, v1

    shr-int/lit8 v3, v4, 0x1

    .line 498
    aget-object v4, p1, v3

    aget-short v4, v4, v5

    if-ne p0, v4, :cond_2

    .line 499
    const/4 v2, 0x1

    goto :goto_1

    .line 500
    :cond_2
    aget-object v4, p1, v3

    aget-short v4, v4, v5

    if-le p0, v4, :cond_3

    .line 501
    move v0, v3

    goto :goto_1

    .line 503
    :cond_3
    move v1, v3

    goto :goto_1

    .line 506
    :cond_4
    if-eqz v2, :cond_5

    .line 507
    aget-object v4, p1, v3

    aget-short v4, v4, v6

    int-to-byte v4, v4

    goto :goto_0

    :cond_5
    move v4, p2

    .line 509
    goto :goto_0
.end method

.method public static getHyphenationClass(C)B
    .locals 2
    .parameter

    .prologue
    .line 542
    .line 543
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->kgUnicodeDescription:[B

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnknowHyphen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    const/4 v0, 0x0

    .line 548
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->kgUnicodeDescription:[B

    aget-byte v0, v0, p0

    goto :goto_0
.end method

.method public static w2u(I)C
    .locals 2
    .parameter "a"

    .prologue
    const/16 v1, 0x80

    .line 404
    if-lt p0, v1, :cond_0

    const/16 v0, 0x9f

    if-le p0, v0, :cond_1

    .line 405
    :cond_0
    int-to-char v0, p0

    .line 407
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeWestern;->WINDOWS_1252:[C

    sub-int v1, p0, v1

    aget-char v0, v0, v1

    goto :goto_0
.end method
