.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B = null

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Character; = null

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x80

    .line 128
    const-class v1, [C

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 503
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_28

    sput-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    .line 1629
    new-array v1, v4, [Ljava/lang/Character;

    sput-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    .line 1632
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v4, :cond_27

    .line 1633
    sget-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 1632
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1635
    :cond_27
    return-void

    .line 503
    :array_28
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 1581
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Ljava/lang/Character;->forNameImpl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Ljava/lang/Character;->ofImpl(I)I

    move-result v0

    return v0
.end method

.method public static charCount(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1729
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1778
    if-nez p0, :cond_8

    .line 1779
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1781
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1782
    .local v2, len:I
    if-ltz p1, :cond_10

    if-lt p1, v2, :cond_16

    .line 1783
    :cond_10
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1786
    :cond_16
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1787
    .local v0, high:C
    if-lt v1, v2, :cond_20

    move v4, v0

    .line 1794
    :goto_1f
    return v4

    .line 1790
    :cond_20
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1791
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1792
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1f

    :cond_2f
    move v4, v0

    .line 1794
    goto :goto_1f
.end method

.method public static codePointAt([CI)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1820
    if-nez p0, :cond_8

    .line 1821
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1823
    :cond_8
    array-length v2, p0

    .line 1824
    .local v2, len:I
    if-ltz p1, :cond_d

    if-lt p1, v2, :cond_13

    .line 1825
    :cond_d
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1828
    :cond_13
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1829
    .local v0, high:C
    if-lt v1, v2, :cond_1b

    move v4, v0

    .line 1836
    :goto_1a
    return v4

    .line 1832
    :cond_1b
    aget-char v3, p0, v1

    .line 1833
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1834
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1a

    :cond_28
    move v4, v0

    .line 1836
    goto :goto_1a
.end method

.method public static codePointAt([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 1865
    if-ltz p1, :cond_9

    if-ge p1, p2, :cond_9

    if-ltz p2, :cond_9

    array-length v3, p0

    if-le p2, v3, :cond_f

    .line 1866
    :cond_9
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1869
    :cond_f
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1870
    .local v0, high:C
    if-lt v1, p2, :cond_17

    move v3, v0

    .line 1877
    :goto_16
    return v3

    .line 1873
    :cond_17
    aget-char v2, p0, v1

    .line 1874
    .local v2, low:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1875
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_16

    :cond_24
    move v3, v0

    .line 1877
    goto :goto_16
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1903
    if-nez p0, :cond_8

    .line 1904
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1906
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1907
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_11

    if-le p1, v1, :cond_17

    .line 1908
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1911
    :cond_17
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1912
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_23

    move v3, v2

    .line 1919
    :goto_22
    return v3

    .line 1915
    :cond_23
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1916
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1917
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_22

    :cond_32
    move v3, v2

    .line 1919
    goto :goto_22
.end method

.method public static codePointBefore([CI)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1945
    if-nez p0, :cond_8

    .line 1946
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1948
    :cond_8
    array-length v1, p0

    .line 1949
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_e

    if-le p1, v1, :cond_14

    .line 1950
    :cond_e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1953
    :cond_14
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1954
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1e

    move v3, v2

    .line 1961
    :goto_1d
    return v3

    .line 1957
    :cond_1e
    aget-char v0, p0, p1

    .line 1958
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1959
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_1d

    :cond_2b
    move v3, v2

    .line 1961
    goto :goto_1d
.end method

.method public static codePointBefore([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "start"

    .prologue
    .line 1992
    if-nez p0, :cond_8

    .line 1993
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1995
    :cond_8
    array-length v1, p0

    .line 1996
    .local v1, len:I
    if-le p1, p2, :cond_11

    if-gt p1, v1, :cond_11

    if-ltz p2, :cond_11

    if-lt p2, v1, :cond_17

    .line 1997
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2000
    :cond_17
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 2001
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-ge p1, p2, :cond_21

    move v3, v2

    .line 2008
    :goto_20
    return v3

    .line 2004
    :cond_21
    aget-char v0, p0, p1

    .line 2005
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2006
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_20

    :cond_2e
    move v3, v2

    .line 2008
    goto :goto_20
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .registers 8
    .parameter "seq"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 2113
    if-nez p0, :cond_8

    .line 2114
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2116
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2117
    .local v2, len:I
    if-ltz p1, :cond_12

    if-gt p2, v2, :cond_12

    if-le p1, p2, :cond_18

    .line 2118
    :cond_12
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2121
    :cond_18
    const/4 v3, 0x0

    .line 2122
    .local v3, result:I
    move v1, p1

    .local v1, i:I
    :goto_1a
    if-ge v1, p2, :cond_3b

    .line 2123
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2124
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2125
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_36

    .line 2126
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2127
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2128
    add-int/lit8 v3, v3, 0x1

    .line 2132
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 2122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 2134
    .end local v0           #c:C
    :cond_3b
    return v3
.end method

.method public static codePointCount([CII)I
    .registers 8
    .parameter "seq"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 2160
    array-length v4, p0

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2161
    add-int v1, p1, p2

    .line 2162
    .local v1, endIndex:I
    const/4 v3, 0x0

    .line 2163
    .local v3, result:I
    move v2, p1

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_25

    .line 2164
    aget-char v0, p0, v2

    .line 2165
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2166
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_20

    .line 2167
    aget-char v0, p0, v2

    .line 2168
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_20

    .line 2169
    add-int/lit8 v3, v3, 0x1

    .line 2173
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 2163
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2175
    .end local v0           #c:C
    :cond_25
    return v3
.end method

.method public static digit(CI)I
    .registers 3
    .parameter "c"
    .parameter "radix"

    .prologue
    .line 2345
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .registers 8
    .parameter "codePoint"
    .parameter "radix"

    .prologue
    const/16 v5, 0x61

    const/16 v4, 0x41

    const/16 v3, 0x30

    const/4 v2, -0x1

    .line 2362
    const/4 v1, 0x2

    if-lt p1, v1, :cond_e

    const/16 v1, 0x24

    if-le p1, v1, :cond_10

    :cond_e
    move v1, v2

    .line 2377
    :goto_f
    return v1

    .line 2365
    :cond_10
    const/16 v1, 0x80

    if-ge p0, v1, :cond_39

    .line 2367
    const/4 v0, -0x1

    .line 2368
    .local v0, result:I
    if-gt v3, p0, :cond_21

    const/16 v1, 0x39

    if-gt p0, v1, :cond_21

    .line 2369
    sub-int v0, p0, v3

    .line 2375
    :cond_1d
    :goto_1d
    if-ge v0, p1, :cond_37

    move v1, v0

    goto :goto_f

    .line 2370
    :cond_21
    if-gt v5, p0, :cond_2c

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2c

    .line 2371
    sub-int v1, p0, v5

    add-int/lit8 v0, v1, 0xa

    goto :goto_1d

    .line 2372
    :cond_2c
    if-gt v4, p0, :cond_1d

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_1d

    .line 2373
    sub-int v1, p0, v4

    add-int/lit8 v0, v1, 0xa

    goto :goto_1d

    :cond_37
    move v1, v2

    .line 2375
    goto :goto_f

    .line 2377
    .end local v0           #result:I
    :cond_39
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v1

    goto :goto_f
.end method

.method private static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .registers 4
    .parameter "digit"
    .parameter "radix"

    .prologue
    const/16 v1, 0xa

    .line 2412
    const/4 v0, 0x2

    if-gt v0, p1, :cond_17

    const/16 v0, 0x24

    if-gt p1, v0, :cond_17

    .line 2413
    if-ltz p0, :cond_17

    if-ge p0, p1, :cond_17

    .line 2414
    if-ge p0, v1, :cond_13

    add-int/lit8 v0, p0, 0x30

    :goto_11
    int-to-char v0, v0

    .line 2417
    :goto_12
    return v0

    .line 2414
    :cond_13
    add-int/lit8 v0, p0, 0x61

    sub-int/2addr v0, v1

    goto :goto_11

    .line 2417
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static native forNameImpl(Ljava/lang/String;)I
.end method

.method public static getDirectionality(C)B
    .registers 2
    .parameter "c"

    .prologue
    .line 2515
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v2, -0x1

    .line 2526
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 2534
    :goto_8
    return v1

    .line 2530
    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    .line 2531
    .local v0, directionality:B
    if-ne v0, v2, :cond_11

    move v1, v2

    .line 2532
    goto :goto_8

    .line 2534
    :cond_11
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    goto :goto_8
.end method

.method private static native getDirectionalityImpl(I)B
.end method

.method public static getNumericValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2430
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .registers 3
    .parameter "codePoint"

    .prologue
    const/16 v1, 0x30

    .line 2453
    const/16 v0, 0x80

    if-ge p0, v0, :cond_2b

    .line 2454
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 2455
    sub-int v0, p0, v1

    .line 2473
    :goto_e
    return v0

    .line 2457
    :cond_f
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1c

    .line 2458
    const/16 v0, 0x57

    sub-int v0, p0, v0

    goto :goto_e

    .line 2460
    :cond_1c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_29

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_29

    .line 2461
    const/16 v0, 0x37

    sub-int v0, p0, v0

    goto :goto_e

    .line 2463
    :cond_29
    const/4 v0, -0x1

    goto :goto_e

    .line 2466
    :cond_2b
    const v0, 0xff21

    if-lt p0, v0, :cond_3b

    const v0, 0xff3a

    if-gt p0, v0, :cond_3b

    .line 2467
    const v0, 0xff17

    sub-int v0, p0, v0

    goto :goto_e

    .line 2470
    :cond_3b
    const v0, 0xff41

    if-lt p0, v0, :cond_4b

    const v0, 0xff5a

    if-gt p0, v0, :cond_4b

    .line 2471
    const v0, 0xff37

    sub-int v0, p0, v0

    goto :goto_e

    .line 2473
    :cond_4b
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    goto :goto_e
.end method

.method private static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2486
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2497
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 2499
    .local v0, type:I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_a

    move v1, v0

    .line 2502
    :goto_9
    return v1

    :cond_a
    add-int/lit8 v1, v0, 0x1

    goto :goto_9
.end method

.method private static native getTypeImpl(I)I
.end method

.method public static isDefined(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2580
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2593
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2607
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2620
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2621
    const/4 v0, 0x1

    .line 2626
    :goto_9
    return v0

    .line 2623
    :cond_a
    const/16 v0, 0x660

    if-ge p0, v0, :cond_10

    .line 2624
    const/4 v0, 0x0

    goto :goto_9

    .line 2626
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1676
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isISOControl(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2672
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2684
    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_10

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isIdentifierIgnorable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2640
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2654
    const/16 v0, 0x600

    if-ge p0, v0, :cond_22

    .line 2655
    if-ltz p0, :cond_a

    const/16 v0, 0x8

    if-le p0, v0, :cond_1e

    :cond_a
    const/16 v0, 0xe

    if-lt p0, v0, :cond_12

    const/16 v0, 0x1b

    if-le p0, v0, :cond_1e

    :cond_12
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x9f

    if-le p0, v0, :cond_1e

    :cond_1a
    const/16 v0, 0xad

    if-ne p0, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 2658
    :goto_1f
    return v0

    .line 2655
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 2658
    :cond_22
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    goto :goto_1f
.end method

.method private static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2698
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .registers 11
    .parameter "codePoint"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v5, 0x40

    const/16 v2, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2714
    if-ge p0, v5, :cond_1b

    .line 2715
    const-wide v1, 0x3ff00100fffc1ffL

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p0

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_19

    move v1, v6

    .line 2720
    :goto_18
    return v1

    :cond_19
    move v1, v7

    .line 2715
    goto :goto_18

    .line 2716
    :cond_1b
    const/16 v1, 0x80

    if-ge p0, v1, :cond_32

    .line 2717
    const-wide v1, -0x7800000178000002L

    const-wide/16 v3, 0x1

    sub-int v5, p0, v5

    shl-long/2addr v3, v5

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_30

    move v1, v6

    goto :goto_18

    :cond_30
    move v1, v7

    goto :goto_18

    .line 2719
    :cond_32
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2720
    .local v0, type:I
    if-lt v0, v6, :cond_3b

    const/4 v1, 0x5

    if-le v0, v1, :cond_68

    :cond_3b
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_68

    const/16 v1, 0x17

    if-eq v0, v1, :cond_68

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4b

    const/16 v1, 0xa

    if-le v0, v1, :cond_68

    :cond_4b
    if-eq v0, v2, :cond_68

    const/4 v1, 0x6

    if-eq v0, v1, :cond_68

    if-ltz p0, :cond_54

    if-le p0, v2, :cond_68

    :cond_54
    const/16 v1, 0xe

    if-lt p0, v1, :cond_5c

    const/16 v1, 0x1b

    if-le p0, v1, :cond_68

    :cond_5c
    const/16 v1, 0x7f

    if-lt p0, v1, :cond_64

    const/16 v1, 0x9f

    if-le p0, v1, :cond_68

    :cond_64
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6a

    :cond_68
    move v1, v6

    goto :goto_18

    :cond_6a
    move v1, v7

    goto :goto_18
.end method

.method public static isJavaIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2740
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .registers 9
    .parameter "codePoint"

    .prologue
    const/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2756
    if-ge p0, v5, :cond_e

    .line 2757
    const/16 v1, 0x24

    if-ne p0, v1, :cond_c

    move v1, v6

    .line 2762
    :goto_b
    return v1

    :cond_c
    move v1, v7

    .line 2757
    goto :goto_b

    .line 2758
    :cond_e
    const/16 v1, 0x80

    if-ge p0, v1, :cond_27

    .line 2759
    const-wide v1, 0x7fffffe87fffffeL

    const-wide/16 v3, 0x1

    sub-int v5, p0, v5

    shl-long/2addr v3, v5

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    move v1, v6

    goto :goto_b

    :cond_25
    move v1, v7

    goto :goto_b

    .line 2761
    :cond_27
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2762
    .local v0, type:I
    if-lt v0, v6, :cond_30

    const/4 v1, 0x5

    if-le v0, v1, :cond_3c

    :cond_30
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3e

    :cond_3c
    move v1, v6

    goto :goto_b

    :cond_3e
    move v1, v7

    goto :goto_b
.end method

.method public static isJavaLetter(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2778
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2793
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2804
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2816
    const/16 v0, 0x41

    if-gt v0, p0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    .line 2817
    :cond_10
    const/4 v0, 0x1

    .line 2822
    :goto_11
    return v0

    .line 2819
    :cond_12
    const/16 v0, 0x80

    if-ge p0, v0, :cond_18

    .line 2820
    const/4 v0, 0x0

    goto :goto_11

    .line 2822
    :cond_18
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    goto :goto_11
.end method

.method private static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2836
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    .line 2849
    const/16 v0, 0x41

    if-gt v0, p0, :cond_9

    const/16 v0, 0x5a

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x61

    if-gt v0, p0, :cond_13

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_13

    :cond_11
    move v0, v1

    .line 2858
    :goto_12
    return v0

    .line 2852
    :cond_13
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1d

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1d

    move v0, v1

    .line 2853
    goto :goto_12

    .line 2855
    :cond_1d
    const/16 v0, 0x80

    if-ge p0, v0, :cond_23

    .line 2856
    const/4 v0, 0x0

    goto :goto_12

    .line 2858
    :cond_23
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    goto :goto_12
.end method

.method private static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1692
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2872
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2885
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    .line 2886
    const/4 v0, 0x1

    .line 2891
    :goto_9
    return v0

    .line 2888
    :cond_a
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 2889
    const/4 v0, 0x0

    goto :goto_9

    .line 2891
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2548
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2560
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2907
    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x20

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSpaceChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2921
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2935
    const/16 v0, 0x20

    if-eq p0, v0, :cond_e

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1680

    if-ne p0, v0, :cond_10

    :cond_e
    move v0, v2

    .line 2945
    :goto_f
    return v0

    .line 2938
    :cond_10
    const/16 v0, 0x2000

    if-ge p0, v0, :cond_16

    move v0, v1

    .line 2939
    goto :goto_f

    .line 2941
    :cond_16
    const v0, 0xffff

    if-gt p0, v0, :cond_33

    .line 2942
    const/16 v0, 0x200b

    if-le p0, v0, :cond_2f

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_31

    :cond_2f
    move v0, v2

    goto :goto_f

    :cond_31
    move v0, v1

    goto :goto_f

    .line 2945
    :cond_33
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    goto :goto_f
.end method

.method private static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1660
    const/high16 v0, 0x1

    if-gt v0, p0, :cond_b

    const v0, 0x10ffff

    if-lt v0, p0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSurrogatePair(CC)Z
    .registers 3
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1710
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTitleCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2959
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2971
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2986
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2999
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3014
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3027
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3041
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3054
    const/16 v0, 0x41

    if-gt v0, p0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    .line 3055
    const/4 v0, 0x1

    .line 3060
    :goto_9
    return v0

    .line 3057
    :cond_a
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 3058
    const/4 v0, 0x0

    goto :goto_9

    .line 3060
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1646
    if-ltz p0, :cond_9

    const v0, 0x10ffff

    if-lt v0, p0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isWhitespace(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3075
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3089
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    :cond_a
    const/16 v0, 0x9

    if-lt p0, v0, :cond_14

    const/16 v0, 0xd

    if-gt p0, v0, :cond_14

    :cond_12
    move v0, v1

    .line 3102
    :goto_13
    return v0

    .line 3092
    :cond_14
    const/16 v0, 0x1680

    if-ne p0, v0, :cond_1a

    move v0, v1

    .line 3093
    goto :goto_13

    .line 3095
    :cond_1a
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_22

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_24

    :cond_22
    move v0, v2

    .line 3096
    goto :goto_13

    .line 3098
    :cond_24
    const v0, 0xffff

    if-gt p0, v0, :cond_3d

    .line 3099
    const/16 v0, 0x200b

    if-le p0, v0, :cond_39

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_39

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_39

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3b

    :cond_39
    move v0, v1

    goto :goto_13

    :cond_3b
    move v0, v2

    goto :goto_13

    .line 3102
    :cond_3d
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    goto :goto_13
.end method

.method private static native isWhitespaceImpl(I)Z
.end method

.method private static native ofImpl(I)I
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "seq"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2202
    if-nez p0, :cond_8

    .line 2203
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2205
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2206
    .local v2, len:I
    if-ltz p1, :cond_10

    if-le p1, v2, :cond_16

    .line 2207
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2210
    :cond_16
    if-nez p2, :cond_1a

    move v5, p1

    .line 2248
    :goto_19
    return v5

    .line 2214
    :cond_1a
    if-lez p2, :cond_49

    .line 2215
    move v0, p2

    .line 2216
    .local v0, codePoints:I
    move v1, p1

    .line 2217
    .local v1, i:I
    :goto_1e
    if-lez v0, :cond_47

    .line 2218
    add-int/lit8 v0, v0, -0x1

    .line 2219
    if-lt v1, v2, :cond_2a

    .line 2220
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2222
    :cond_2a
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2223
    add-int/lit8 v3, v1, 0x1

    .line 2224
    .local v3, next:I
    if-ge v3, v2, :cond_44

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2225
    add-int/lit8 v1, v1, 0x1

    .line 2228
    .end local v3           #next:I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_47
    move v5, v1

    .line 2230
    goto :goto_19

    .line 2233
    .end local v0           #codePoints:I
    .end local v1           #i:I
    :cond_49
    neg-int v0, p2

    .line 2234
    .restart local v0       #codePoints:I
    move v1, p1

    .line 2235
    .restart local v1       #i:I
    :cond_4b
    :goto_4b
    if-lez v0, :cond_75

    .line 2236
    add-int/lit8 v0, v0, -0x1

    .line 2237
    add-int/lit8 v1, v1, -0x1

    .line 2238
    if-gez v1, :cond_59

    .line 2239
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2241
    :cond_59
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2242
    const/4 v5, 0x1

    sub-int v4, v1, v5

    .line 2243
    .local v4, prev:I
    if-ltz v4, :cond_4b

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2244
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    .end local v4           #prev:I
    :cond_75
    move v5, v1

    .line 2248
    goto :goto_19
.end method

.method public static offsetByCodePoints([CIIII)I
    .registers 11
    .parameter "seq"
    .parameter "start"
    .parameter "count"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2285
    array-length v5, p0

    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2286
    add-int v1, p1, p2

    .line 2287
    .local v1, end:I
    if-lt p3, p1, :cond_a

    if-le p3, v1, :cond_10

    .line 2288
    :cond_a
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2291
    :cond_10
    if-nez p4, :cond_14

    move v5, p3

    .line 2329
    :goto_13
    return v5

    .line 2295
    :cond_14
    if-lez p4, :cond_3f

    .line 2296
    move v0, p4

    .line 2297
    .local v0, codePoints:I
    move v2, p3

    .line 2298
    .local v2, i:I
    :goto_18
    if-lez v0, :cond_3d

    .line 2299
    add-int/lit8 v0, v0, -0x1

    .line 2300
    if-lt v2, v1, :cond_24

    .line 2301
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2303
    :cond_24
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2304
    add-int/lit8 v3, v2, 0x1

    .line 2305
    .local v3, next:I
    if-ge v3, v1, :cond_3a

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2306
    add-int/lit8 v2, v2, 0x1

    .line 2309
    .end local v3           #next:I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3d
    move v5, v2

    .line 2311
    goto :goto_13

    .line 2314
    .end local v0           #codePoints:I
    .end local v2           #i:I
    :cond_3f
    neg-int v0, p4

    .line 2315
    .restart local v0       #codePoints:I
    move v2, p3

    .line 2316
    .restart local v2       #i:I
    :cond_41
    :goto_41
    if-lez v0, :cond_67

    .line 2317
    add-int/lit8 v0, v0, -0x1

    .line 2318
    add-int/lit8 v2, v2, -0x1

    .line 2319
    if-ge v2, p1, :cond_4f

    .line 2320
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2322
    :cond_4f
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2323
    const/4 v5, 0x1

    sub-int v4, v2, v5

    .line 2324
    .local v4, prev:I
    if-lt v4, p1, :cond_41

    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2325
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .end local v4           #prev:I
    :cond_67
    move v5, v2

    .line 2329
    goto :goto_13
.end method

.method public static reverseBytes(C)C
    .registers 3
    .parameter "c"

    .prologue
    .line 3116
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .registers 8
    .parameter "codePoint"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v4, 0x1

    .line 2035
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2036
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2038
    :cond_d
    if-nez p1, :cond_15

    .line 2039
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2041
    :cond_15
    if-ltz p2, :cond_1a

    array-length v3, p1

    if-lt p2, v3, :cond_20

    .line 2042
    :cond_1a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2045
    :cond_20
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2046
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ne p2, v3, :cond_30

    .line 2047
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2051
    :cond_30
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 2052
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2053
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2054
    .local v2, low:I
    int-to-char v3, v1

    aput-char v3, p1, p2

    .line 2055
    add-int/lit8 v3, p2, 0x1

    int-to-char v4, v2

    aput-char v4, p1, v3

    .line 2056
    const/4 v3, 0x2

    .line 2060
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_4d
    return v3

    .line 2059
    :cond_4e
    int-to-char v3, p0

    aput-char v3, p1, p2

    move v3, v4

    .line 2060
    goto :goto_4d
.end method

.method public static toChars(I)[C
    .registers 8
    .parameter "codePoint"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2078
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2079
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2082
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2083
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 2084
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2085
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2086
    .local v2, low:I
    const/4 v3, 0x2

    new-array v3, v3, [C

    int-to-char v4, v1

    aput-char v4, v3, v5

    int-to-char v4, v2

    aput-char v4, v3, v6

    .line 2088
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_31
    return-object v3

    :cond_32
    new-array v3, v6, [C

    int-to-char v4, p0

    aput-char v4, v3, v5

    goto :goto_31
.end method

.method public static toCodePoint(CC)I
    .registers 6
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1750
    and-int/lit16 v2, p0, 0x3ff

    shl-int/lit8 v0, v2, 0xa

    .line 1751
    .local v0, h:I
    and-int/lit16 v1, p1, 0x3ff

    .line 1752
    .local v1, l:I
    or-int v2, v0, v1

    const/high16 v3, 0x1

    add-int/2addr v2, v3

    return v2
.end method

.method public static toLowerCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3130
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3145
    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_c

    .line 3146
    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    .line 3151
    :goto_b
    return v0

    .line 3148
    :cond_c
    const/16 v0, 0xc0

    if-ge p0, v0, :cond_12

    move v0, p0

    .line 3149
    goto :goto_b

    .line 3151
    :cond_12
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result v0

    goto :goto_b
.end method

.method private static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 3169
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3182
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3195
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3211
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3226
    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    .line 3227
    const/16 v0, 0x20

    sub-int v0, p0, v0

    int-to-char v0, v0

    .line 3232
    :goto_d
    return v0

    .line 3229
    :cond_e
    const/16 v0, 0xb5

    if-ge p0, v0, :cond_14

    move v0, p0

    .line 3230
    goto :goto_d

    .line 3232
    :cond_14
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result v0

    goto :goto_d
.end method

.method private static native toUpperCaseImpl(I)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .registers 2
    .parameter "c"

    .prologue
    .line 1623
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    sget-object v0, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    aget-object v0, v0, p0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_8
.end method


# virtual methods
.method public charValue()C
    .registers 2

    .prologue
    .line 1589
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .registers 4
    .parameter "c"

    .prologue
    .line 1607
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 2394
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_e

    iget-char v0, p0, Ljava/lang/Character;->value:C

    check-cast p1, Ljava/lang/Character;

    .end local p1
    iget-char v1, p1, Ljava/lang/Character;->value:C

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2567
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3158
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
