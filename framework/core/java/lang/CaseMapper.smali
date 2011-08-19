.class Ljava/lang/CaseMapper;
.super Ljava/lang/Object;
.source "CaseMapper.java"


# static fields
.field private static final GREEK_CAPITAL_SIGMA:C = '\u03a3'

.field private static final GREEK_SMALL_FINAL_SIGMA:C = '\u03c2'

.field private static final LATIN_CAPITAL_I_WITH_DOT:C = '\u0130'

.field private static final upperValues:[C

.field private static final upperValues2:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    .line 27
    const-string v0, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues2:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static isFinalSigma([CIII)Z
    .registers 10
    .parameter "value"
    .parameter "offset"
    .parameter "count"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    if-gt p3, p1, :cond_6

    move v2, v4

    .line 100
    :goto_5
    return v2

    .line 89
    :cond_6
    sub-int v2, p3, v5

    aget-char v1, p0, v2

    .line 90
    .local v1, previous:C
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    if-nez v2, :cond_1e

    move v2, v4

    .line 91
    goto :goto_5

    .line 93
    :cond_1e
    add-int/lit8 v2, p3, 0x1

    add-int v3, p1, p2

    if-lt v2, v3, :cond_26

    move v2, v5

    .line 94
    goto :goto_5

    .line 96
    :cond_26
    add-int/lit8 v2, p3, 0x1

    aget-char v0, p0, v2

    .line 97
    .local v0, next:C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3c
    move v2, v4

    .line 98
    goto :goto_5

    :cond_3e
    move v2, v5

    .line 100
    goto :goto_5
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;
    .registers 15
    .parameter "locale"
    .parameter "s"
    .parameter "value"
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, languageCode:Ljava/lang/String;
    const-string v8, "tr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string v8, "az"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string v8, "lt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 50
    :cond_1d
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    :goto_25
    return-object v8

    .line 53
    :cond_26
    const/4 v7, 0x0

    .line 54
    .local v7, newValue:[C
    const/4 v5, 0x0

    .line 55
    .local v5, newCount:I
    move v2, p3

    .local v2, i:I
    add-int v1, p3, p4

    .local v1, end:I
    :goto_2b
    if-ge v2, v1, :cond_68

    .line 56
    aget-char v0, p2, v2

    .line 58
    .local v0, ch:C
    const/16 v8, 0x130

    if-eq v0, v8, :cond_39

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 60
    :cond_39
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_25

    .line 61
    :cond_42
    const/16 v8, 0x3a3

    if-ne v0, v8, :cond_63

    invoke-static {p2, p3, p4, v2}, Ljava/lang/CaseMapper;->isFinalSigma([CIII)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 62
    const/16 v4, 0x3c2

    .line 66
    .local v4, newCh:C
    :goto_4e
    if-nez v7, :cond_59

    if-eq v0, v4, :cond_59

    .line 67
    new-array v7, p4, [C

    .line 68
    sub-int v5, v2, p3

    .line 69
    invoke-static {p2, p3, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_59
    move v6, v5

    .line 71
    .end local v5           #newCount:I
    .local v6, newCount:I
    if-eqz v7, :cond_72

    .line 72
    add-int/lit8 v5, v6, 0x1

    .end local v6           #newCount:I
    .restart local v5       #newCount:I
    aput-char v4, v7, v6

    .line 55
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 64
    .end local v4           #newCh:C
    :cond_63
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .restart local v4       #newCh:C
    goto :goto_4e

    .line 75
    .end local v0           #ch:C
    .end local v4           #newCh:C
    :cond_68
    if-eqz v7, :cond_70

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9, v5, v7}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_25

    :cond_70
    move-object v8, p1

    goto :goto_25

    .end local v5           #newCount:I
    .restart local v0       #ch:C
    .restart local v4       #newCh:C
    .restart local v6       #newCount:I
    :cond_72
    move v5, v6

    .end local v6           #newCount:I
    .restart local v5       #newCount:I
    goto :goto_60
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;
    .registers 16
    .parameter "locale"
    .parameter "s"
    .parameter "value"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, languageCode:Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #languageCode:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 145
    :cond_1c
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    .end local p1
    :goto_24
    return-object p0

    .line 148
    .restart local p0
    .restart local p1
    :cond_25
    const/4 v3, 0x0

    .line 149
    .local v3, output:[C
    const/4 v0, 0x0

    .line 150
    .local v0, i:I
    move v2, p3

    .local v2, o:I
    add-int v1, p3, p4

    .local v1, end:I
    move v4, v2

    .end local v2           #o:I
    .local v4, o:I
    move-object v5, v3

    .end local v3           #output:[C
    .local v5, output:[C
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    :goto_2d
    if-ge v4, v1, :cond_d1

    .line 151
    aget-char v0, p2, v4

    .line 152
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 153
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 155
    .restart local p0
    :cond_40
    invoke-static {v0}, Ljava/lang/CaseMapper;->upperIndex(I)I

    move-result v2

    .line 156
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_83

    .line 157
    if-eqz v5, :cond_5c

    array-length v2, v5

    .end local v2           #index:I
    if-lt v3, v2, :cond_5c

    .line 158
    array-length v2, v5

    div-int/lit8 v6, p4, 0x6

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 159
    .local v2, newoutput:[C
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object v2, v2

    .end local v5           #output:[C
    .local v2, output:[C
    move-object v5, v2

    .line 162
    .end local v2           #output:[C
    .restart local v5       #output:[C
    :cond_5c
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 163
    .local v6, upch:C
    if-eq v0, v6, :cond_7a

    .line 164
    if-nez v5, :cond_f6

    .line 165
    new-array v2, p4, [C

    .line 166
    .end local v5           #output:[C
    .restart local v2       #output:[C
    sub-int v0, v4, p3

    .line 167
    .end local v3           #i:I
    .local v0, i:I
    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 169
    .end local v2           #output:[C
    .local v3, output:[C
    :goto_6d
    add-int/lit8 v2, v0, 0x1

    .end local v0           #i:I
    .local v2, i:I
    aput-char v6, v3, v0

    move v0, v2

    .end local v2           #i:I
    .restart local v0       #i:I
    move-object v2, v3

    .end local v3           #output:[C
    .local v2, output:[C
    :goto_73
    move-object v3, v2

    .line 150
    .end local v2           #output:[C
    .end local v6           #upch:C
    .restart local v3       #output:[C
    :cond_74
    :goto_74
    add-int/lit8 v2, v4, 0x1

    .end local v4           #o:I
    .local v2, o:I
    move v4, v2

    .end local v2           #o:I
    .restart local v4       #o:I
    move-object v5, v3

    .end local v3           #output:[C
    .restart local v5       #output:[C
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    goto :goto_2d

    .line 170
    .local v0, ch:C
    .restart local v6       #upch:C
    :cond_7a
    if-eqz v5, :cond_f2

    .line 171
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    aput-char v0, v5, v3

    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move-object v2, v5

    .end local v5           #output:[C
    .local v2, output:[C
    goto :goto_73

    .line 174
    .end local v6           #upch:C
    .local v0, ch:C
    .local v2, index:I
    .restart local v3       #i:I
    .restart local v5       #output:[C
    :cond_83
    mul-int/lit8 v6, v2, 0x3

    .line 175
    .local v6, target:I
    sget-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    .end local v0           #ch:C
    add-int/lit8 v2, v6, 0x2

    aget-char v7, v0, v2

    .line 176
    .end local v2           #index:I
    .local v7, val3:C
    if-nez v5, :cond_b5

    .line 177
    div-int/lit8 v0, p4, 0x6

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 178
    .end local v5           #output:[C
    .local v2, output:[C
    sub-int v0, v4, p3

    .line 179
    .end local v3           #i:I
    .local v0, i:I
    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 186
    .end local v2           #output:[C
    .local v3, output:[C
    :goto_9b
    sget-object v2, Ljava/lang/CaseMapper;->upperValues:[C

    aget-char v5, v2, v6

    .line 187
    .local v5, val:C
    add-int/lit8 v2, v0, 0x1

    .end local v0           #i:I
    .local v2, i:I
    aput-char v5, v3, v0

    .line 188
    sget-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v5, v6, 0x1

    aget-char v5, v0, v5

    .line 189
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .restart local v0       #i:I
    aput-char v5, v3, v2

    .line 190
    if-eqz v7, :cond_74

    .line 191
    add-int/lit8 v2, v0, 0x1

    .end local v0           #i:I
    .restart local v2       #i:I
    aput-char v7, v3, v0

    move v0, v2

    .end local v2           #i:I
    .restart local v0       #i:I
    goto :goto_74

    .line 180
    .end local v0           #i:I
    .local v3, i:I
    .local v5, output:[C
    :cond_b5
    if-nez v7, :cond_cf

    const/4 v0, 0x1

    :goto_b8
    add-int/2addr v0, v3

    array-length v2, v5

    if-lt v0, v2, :cond_ef

    .line 181
    array-length v0, v5

    div-int/lit8 v2, p4, 0x6

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 182
    .local v0, newoutput:[C
    const/4 v2, 0x0

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v2, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object v0, v0

    .end local v5           #output:[C
    .local v0, output:[C
    move v10, v3

    .end local v3           #i:I
    .local v10, i:I
    move-object v3, v0

    .end local v0           #output:[C
    .local v3, output:[C
    move v0, v10

    .end local v10           #i:I
    .local v0, i:I
    goto :goto_9b

    .line 180
    .end local v0           #i:I
    .local v3, i:I
    .restart local v5       #output:[C
    :cond_cf
    const/4 v0, 0x2

    goto :goto_b8

    .line 195
    .end local v6           #target:I
    .end local v7           #val3:C
    :cond_d1
    if-nez v5, :cond_d6

    move-object p0, p1

    .line 196
    goto/16 :goto_24

    .line 198
    :cond_d6
    array-length p0, v5

    .end local p0
    if-eq p0, v3, :cond_df

    array-length p0, v5

    sub-int/2addr p0, v3

    const/16 p1, 0x8

    if-ge p0, p1, :cond_e7

    .end local p1
    :cond_df
    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v3, v5}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_24

    :cond_e7
    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v5, p1, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_24

    .restart local v6       #target:I
    .restart local v7       #val3:C
    .restart local p0
    .restart local p1
    :cond_ef
    move v0, v3

    .end local v3           #i:I
    .restart local v0       #i:I
    move-object v3, v5

    .end local v5           #output:[C
    .local v3, output:[C
    goto :goto_9b

    .end local v7           #val3:C
    .local v0, ch:C
    .local v3, i:I
    .restart local v5       #output:[C
    .local v6, upch:C
    :cond_f2
    move v0, v3

    .end local v3           #i:I
    .local v0, i:I
    move-object v2, v5

    .end local v5           #output:[C
    .local v2, output:[C
    goto/16 :goto_73

    .end local v2           #output:[C
    .local v0, ch:C
    .restart local v3       #i:I
    .restart local v5       #output:[C
    :cond_f6
    move v0, v3

    .end local v3           #i:I
    .local v0, i:I
    move-object v3, v5

    .end local v5           #output:[C
    .local v3, output:[C
    goto/16 :goto_6d
.end method

.method private static upperIndex(I)I
    .registers 7
    .parameter "ch"

    .prologue
    const v5, 0xfb13

    const v4, 0xfb00

    const/16 v3, 0x1f50

    const/16 v2, 0x1e96

    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, index:I
    const/16 v1, 0xdf

    if-lt p0, v1, :cond_16

    .line 113
    const/16 v1, 0x587

    if-gt p0, v1, :cond_24

    .line 114
    sparse-switch p0, :sswitch_data_58

    :cond_16
    :goto_16
    move v1, v0

    .line 139
    :goto_17
    return v1

    .line 115
    :sswitch_18
    const/4 v1, 0x0

    goto :goto_17

    .line 116
    :sswitch_1a
    const/4 v1, 0x1

    goto :goto_17

    .line 117
    :sswitch_1c
    const/4 v1, 0x2

    goto :goto_17

    .line 118
    :sswitch_1e
    const/4 v1, 0x3

    goto :goto_17

    .line 119
    :sswitch_20
    const/4 v1, 0x4

    goto :goto_17

    .line 120
    :sswitch_22
    const/4 v1, 0x5

    goto :goto_17

    .line 122
    :cond_24
    if-lt p0, v2, :cond_16

    .line 123
    const/16 v1, 0x1e9a

    if-gt p0, v1, :cond_2f

    .line 124
    add-int/lit8 v1, p0, 0x6

    sub-int v0, v1, v2

    goto :goto_16

    .line 125
    :cond_2f
    if-lt p0, v3, :cond_3f

    const/16 v1, 0x1ffc

    if-gt p0, v1, :cond_3f

    .line 126
    sget-object v1, Ljava/lang/CaseMapper;->upperValues2:[C

    sub-int v2, p0, v3

    aget-char v0, v1, v2

    .line 127
    if-nez v0, :cond_16

    .line 128
    const/4 v0, -0x1

    goto :goto_16

    .line 130
    :cond_3f
    if-lt p0, v4, :cond_16

    .line 131
    const v1, 0xfb06

    if-gt p0, v1, :cond_4b

    .line 132
    add-int/lit8 v1, p0, 0x5a

    sub-int v0, v1, v4

    goto :goto_16

    .line 133
    :cond_4b
    if-lt p0, v5, :cond_16

    const v1, 0xfb17

    if-gt p0, v1, :cond_16

    .line 134
    add-int/lit8 v1, p0, 0x61

    sub-int v0, v1, v5

    goto :goto_16

    .line 114
    nop

    :sswitch_data_58
    .sparse-switch
        0xdf -> :sswitch_18
        0x149 -> :sswitch_1a
        0x1f0 -> :sswitch_1c
        0x390 -> :sswitch_1e
        0x3b0 -> :sswitch_20
        0x587 -> :sswitch_22
    .end sparse-switch
.end method
