.class public Lorg/apache/harmony/archive/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiEndsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "source"
    .parameter "suffix"

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 38
    .local v3, length:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_d

    move v5, v7

    .line 49
    :goto_c
    return v5

    .line 41
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, v5, v3

    .line 42
    .local v4, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v3, :cond_31

    .line 43
    add-int v5, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, c1:C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 45
    .local v1, c2:C
    if-eq v0, v1, :cond_2e

    invoke-static {v0}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(C)C

    move-result v5

    invoke-static {v1}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_2e

    move v5, v7

    .line 46
    goto :goto_c

    .line 42
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 49
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_31
    const/4 v5, 0x1

    goto :goto_c
.end method

.method public static asciiEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v4, v6

    .line 113
    :goto_7
    return v4

    .line 97
    :cond_8
    if-ne p0, p1, :cond_c

    move v4, v7

    .line 98
    goto :goto_7

    .line 101
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 102
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_18

    move v4, v6

    .line 103
    goto :goto_7

    .line 106
    :cond_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v3, :cond_34

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    .local v0, c1:C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 109
    .local v1, c2:C
    if-eq v0, v1, :cond_31

    invoke-static {v0}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(C)C

    move-result v4

    invoke-static {v1}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_31

    move v4, v6

    .line 110
    goto :goto_7

    .line 106
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_34
    move v4, v7

    .line 113
    goto :goto_7
.end method

.method public static asciiEqualsIgnoreCase([B[B)Z
    .registers 9
    .parameter "buf1"
    .parameter "buf2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v3, v5

    .line 80
    :goto_7
    return v3

    .line 66
    :cond_8
    if-ne p0, p1, :cond_c

    move v3, v6

    .line 67
    goto :goto_7

    .line 69
    :cond_c
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_12

    move v3, v5

    .line 70
    goto :goto_7

    .line 73
    :cond_12
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    .line 74
    aget-byte v0, p0, v2

    .line 75
    .local v0, b1:B
    aget-byte v1, p1, v2

    .line 76
    .local v1, b2:B
    if-eq v0, v1, :cond_28

    invoke-static {v0}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(B)B

    move-result v3

    invoke-static {v1}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(B)B

    move-result v4

    if-eq v3, v4, :cond_28

    move v3, v5

    .line 77
    goto :goto_7

    .line 73
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_2b
    move v3, v6

    .line 80
    goto :goto_7
.end method

.method private static final toASCIIUpperCase(B)B
    .registers 2
    .parameter "b"

    .prologue
    .line 117
    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    .line 118
    const/16 v0, 0x20

    sub-int v0, p0, v0

    int-to-byte v0, v0

    .line 120
    :goto_d
    return v0

    :cond_e
    move v0, p0

    goto :goto_d
.end method

.method private static final toASCIIUpperCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 124
    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    .line 125
    const/16 v0, 0x20

    sub-int v0, p0, v0

    int-to-char v0, v0

    .line 127
    :goto_d
    return v0

    :cond_e
    move v0, p0

    goto :goto_d
.end method
