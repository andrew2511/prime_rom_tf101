.class public final Lorg/apache/harmony/luni/util/FloatingPointParser;
.super Ljava/lang/Object;
.source "FloatingPointParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    .registers 9
    .parameter "s"
    .parameter "length"
    .parameter "isDouble"

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 102
    .local v3, negative:Z
    const/4 v1, 0x0

    .line 104
    .local v1, e:I
    const/4 v4, 0x0

    .line 105
    .local v4, start:I
    if-nez p1, :cond_a

    .line 106
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 108
    .restart local p0
    :cond_a
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, c:C
    const/16 v2, 0x44

    if-eq v0, v2, :cond_21

    const/16 v2, 0x64

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2a

    .line 110
    :cond_21
    add-int/lit8 p1, p1, -0x1

    .line 111
    if-nez p1, :cond_2a

    .line 112
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 116
    .restart local p0
    :cond_2a
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .end local v0           #c:C
    move-result v0

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 117
    .local v2, end:I
    const/4 v0, -0x1

    if-le v2, v0, :cond_77

    .line 118
    add-int/lit8 v0, v2, 0x1

    if-ne v0, p1, :cond_46

    .line 119
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 122
    .restart local p0
    :cond_46
    add-int/lit8 v0, v2, 0x1

    .line 123
    .local v0, exponent_offset:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .end local v1           #e:I
    const/16 v5, 0x2b

    if-ne v1, v5, :cond_61

    .line 124
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_5f

    .line 125
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 127
    .restart local p0
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_61
    :try_start_61
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #exponent_offset:I
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_68} :catch_71

    move-result v0

    .local v0, e:I
    move v1, v0

    .line 141
    .end local v0           #e:I
    .restart local v1       #e:I
    :goto_6a
    if-nez p1, :cond_7a

    .line 142
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 131
    .end local v1           #e:I
    .restart local p0
    :catch_71
    move-exception p1

    .line 135
    .local p1, ex:Ljava/lang/NumberFormatException;
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 139
    .restart local v1       #e:I
    .restart local p0
    .local p1, length:I
    :cond_77
    move v0, p1

    .end local v2           #end:I
    .local v0, end:I
    move v2, v0

    .end local v0           #end:I
    .restart local v2       #end:I
    goto :goto_6a

    .line 145
    :cond_7a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    .local v0, c:C
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_90

    .line 147
    add-int/lit8 v3, v4, 0x1

    .line 148
    .end local v4           #start:I
    .local v3, start:I
    add-int/lit8 p1, p1, -0x1

    .line 149
    const/4 v0, 0x1

    .local v0, negative:Z
    move v4, v3

    .end local v3           #start:I
    .restart local v4       #start:I
    move v3, v0

    .line 154
    .end local v0           #negative:Z
    .local v3, negative:Z
    :cond_89
    :goto_89
    if-nez p1, :cond_9a

    .line 155
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 150
    .local v0, c:C
    .restart local p0
    :cond_90
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_89

    .line 151
    add-int/lit8 v0, v4, 0x1

    .line 152
    .end local v4           #start:I
    .local v0, start:I
    add-int/lit8 p1, p1, -0x1

    move v4, v0

    .end local v0           #start:I
    .restart local v4       #start:I
    goto :goto_89

    .line 158
    :cond_9a
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .end local p1           #length:I
    move-result p1

    .line 159
    .local p1, decimal:I
    const/4 v0, -0x1

    if-le p1, v0, :cond_cf

    .line 160
    sub-int v0, v2, p1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    sub-int v0, v1, v0

    .line 161
    .end local v1           #e:I
    .local v0, e:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4           #start:I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #decimal:I
    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    .restart local p0
    :goto_c4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .local p1, length:I
    if-nez p1, :cond_d5

    .line 167
    invoke-static {p0, p2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 163
    .end local v0           #e:I
    .restart local v1       #e:I
    .restart local v4       #start:I
    .restart local p0
    .local p1, decimal:I
    :cond_cf
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    .end local v1           #e:I
    .restart local v0       #e:I
    goto :goto_c4

    .line 170
    .end local v4           #start:I
    .local p1, length:I
    :cond_d5
    move p2, p1

    .line 171
    .end local v2           #end:I
    .local p2, end:I
    :goto_d6
    const/4 v1, 0x1

    if-le p2, v1, :cond_e7

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_e7

    .line 172
    add-int/lit8 p2, p2, -0x1

    goto :goto_d6

    .line 175
    :cond_e7
    const/4 v1, 0x0

    .line 176
    .local v1, start:I
    :goto_e8
    const/4 v2, 0x1

    sub-int v2, p2, v2

    if-ge v1, v2, :cond_f8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_f8

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 180
    :cond_f8
    if-ne p2, p1, :cond_fc

    if-eqz v1, :cond_103

    .line 181
    :cond_fc
    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    .line 182
    .end local v0           #e:I
    .local p1, e:I
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, p1

    .line 187
    .end local p1           #e:I
    .restart local v0       #e:I
    :cond_103
    const/16 p1, -0x167

    .line 188
    .local p1, APPROX_MIN_MAGNITUDE:I
    const/16 p1, 0x34

    .line 189
    .local p1, MAX_DIGITS:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 190
    .local p1, length:I
    const/16 p2, 0x34

    if-le p1, p2, :cond_12b

    .end local p2           #end:I
    const/16 p2, -0x167

    if-ge v0, p2, :cond_12b

    .line 191
    const/16 p2, -0x167

    sub-int/2addr p2, v0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .end local v1           #start:I
    move-result p2

    .line 192
    .local p2, d:I
    const/4 v1, 0x0

    sub-int/2addr p1, p2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #length:I
    move-result-object p0

    .line 193
    add-int p1, v0, p2

    .line 196
    .end local v0           #e:I
    .end local p2           #d:I
    .local p1, e:I
    :goto_125
    new-instance p2, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    invoke-direct {p2, p0, p1, v3}, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;-><init>(Ljava/lang/String;IZ)V

    return-object p2

    .restart local v0       #e:I
    .restart local v1       #start:I
    .local p1, length:I
    :cond_12b
    move p1, v0

    .end local v0           #e:I
    .local p1, e:I
    goto :goto_125
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .registers 5
    .parameter "s"
    .parameter "isDouble"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2d

    const-string v2, "double"

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const-string v2, "float"

    goto :goto_11
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method private static parseDblName(Ljava/lang/String;I)D
    .registers 12
    .parameter "namedDouble"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 205
    if-eq p1, v9, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    if-eq p1, v5, :cond_15

    const/16 v0, 0x9

    if-eq p1, v0, :cond_15

    .line 206
    invoke-static {p0, v8}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    .line 209
    :cond_15
    const/4 v7, 0x0

    .line 210
    .local v7, negative:Z
    const/4 v2, 0x0

    .line 211
    .local v2, i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 212
    .local v6, firstChar:C
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_31

    .line 213
    const/4 v7, 0x1

    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 219
    :cond_22
    :goto_22
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 220
    if-eqz v7, :cond_38

    const-wide/high16 v0, -0x10

    .line 224
    :goto_30
    return-wide v0

    .line 215
    :cond_31
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_22

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 220
    :cond_38
    const-wide/high16 v0, 0x7ff0

    goto :goto_30

    .line 223
    :cond_3b
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 224
    const-wide/high16 v0, 0x7ff8

    goto :goto_30

    .line 227
    :cond_49
    invoke-static {p0, v8}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 11
    .parameter "s"

    .prologue
    const/4 v9, 0x1

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 275
    .local v2, length:I
    if-nez v2, :cond_10

    .line 276
    invoke-static {p0, v9}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 280
    :cond_10
    sub-int v5, v2, v9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 281
    .local v1, last:C
    const/16 v5, 0x79

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_23

    .line 282
    :cond_1e
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblName(Ljava/lang/String;I)D

    move-result-wide v5

    .line 299
    :goto_22
    return-wide v5

    .line 286
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    .line 287
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_22

    .line 290
    :cond_35
    invoke-static {p0, v2, v9}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;IZ)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 292
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v6, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v3

    .line 293
    .local v3, result:D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_50

    .line 294
    invoke-static {p0, v9}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 296
    :cond_50
    iget-boolean v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v5, :cond_55

    .line 297
    neg-double v3, v3

    :cond_55
    move-wide v5, v3

    .line 299
    goto :goto_22
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 9
    .parameter "s"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 316
    .local v2, length:I
    if-nez v2, :cond_11

    .line 317
    invoke-static {p0, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 321
    :cond_11
    const/4 v4, 0x1

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 322
    .local v1, last:C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_20

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_25

    .line 323
    :cond_20
    invoke-static {p0, v2}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltName(Ljava/lang/String;I)F

    move-result v4

    .line 339
    :goto_24
    return v4

    .line 327
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_36

    .line 328
    invoke-static {p0}, Lorg/apache/harmony/luni/util/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_24

    .line 331
    :cond_36
    invoke-static {p0, v2, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->initialParse(Ljava/lang/String;IZ)Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;

    move-result-object v0

    .line 332
    .local v0, info:Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
    iget-object v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    iget v5, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 333
    .local v3, result:F
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v4, v7, :cond_4d

    .line 334
    invoke-static {p0, v6}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 336
    :cond_4d
    iget-boolean v4, v0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    if-eqz v4, :cond_52

    .line 337
    neg-float v3, v3

    :cond_52
    move v4, v3

    .line 339
    goto :goto_24
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseFltName(Ljava/lang/String;I)F
    .registers 11
    .parameter "namedFloat"
    .parameter "length"

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 236
    if-eq p1, v8, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    if-eq p1, v5, :cond_14

    const/16 v0, 0x9

    if-eq p1, v0, :cond_14

    .line 237
    invoke-static {p0, v1}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    .line 240
    :cond_14
    const/4 v7, 0x0

    .line 241
    .local v7, negative:Z
    const/4 v2, 0x0

    .line 242
    .local v2, i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 243
    .local v6, firstChar:C
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_30

    .line 244
    const/4 v7, 0x1

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 250
    :cond_21
    :goto_21
    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 251
    if-eqz v7, :cond_37

    const/high16 v0, -0x80

    .line 255
    :goto_2f
    return v0

    .line 246
    :cond_30
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_21

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 251
    :cond_37
    const/high16 v0, 0x7f80

    goto :goto_2f

    .line 254
    :cond_3a
    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 255
    const/high16 v0, 0x7fc0

    goto :goto_2f

    .line 258
    :cond_48
    invoke-static {p0, v1}, Lorg/apache/harmony/luni/util/FloatingPointParser;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
