.class public Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;
.super Ljava/lang/Object;
.source "DefaultHyphenationEngine.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private jump_chars(Ljava/lang/String;BI)I
    .locals 3
    .parameter "word"
    .parameter "characterType"
    .parameter "position"

    .prologue
    .line 141
    move v1, p3

    .line 142
    .local v1, internal_pos:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 146
    .local v0, charArray:[C
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-char v2, v0, v1

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v2

    if-ne v2, p2, :cond_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0           #charArray:[C
    :cond_0
    return v1
.end method

.method private reverse_jump_chars(Ljava/lang/String;BI)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    .line 165
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 168
    if-lez p3, :cond_2

    move v1, p3

    .line 170
    :cond_0
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-char v2, v0, v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v2

    if-ne v2, p2, :cond_1

    .line 172
    add-int/lit8 v1, v1, -0x1

    .line 173
    if-nez v1, :cond_0

    :cond_1
    move v0, v1

    .line 174
    :goto_0
    return v0

    :cond_2
    move v0, p3

    goto :goto_0
.end method

.method private reverse_jump_syllable(Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;IZ)I
    .locals 10
    .parameter "word"
    .parameter "endLength"
    .parameter "activate_cut"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 194
    move v3, p2

    .line 195
    .local v3, internalEndLength:I
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7, v3}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->reverse_jump_chars(Ljava/lang/String;BI)I

    move-result v3

    .line 197
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8, v3}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->reverse_jump_chars(Ljava/lang/String;BI)I

    move-result v4

    .line 199
    .local v4, tempPos:I
    if-ne v3, v4, :cond_0

    move v5, p2

    .line 293
    :goto_0
    return v5

    .line 203
    :cond_0
    move v3, v4

    .line 206
    const/4 v2, 0x0

    .line 212
    .local v2, found:Z
    if-lt v3, v8, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    .local v0, c1:C
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 217
    .local v1, c2:C
    sparse-switch v1, :sswitch_data_0

    .line 254
    :goto_1
    if-lt v3, v8, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 259
    const/16 v5, 0x68

    if-ne v1, v5, :cond_1

    .line 261
    sparse-switch v0, :sswitch_data_1

    .line 274
    add-int/lit8 v3, v3, -0x1

    .line 277
    :goto_2
    const/4 v2, 0x1

    .line 281
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_1
    if-nez v2, :cond_2

    if-lez v3, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v5

    if-ne v5, v7, :cond_2

    .line 284
    add-int/lit8 v3, v3, -0x1

    .line 288
    :cond_2
    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 290
    invoke-virtual {p1, v3}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->addHyphenationPoint(I)V

    :cond_3
    move v5, v3

    .line 293
    goto :goto_0

    .line 220
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    :sswitch_0
    sparse-switch v0, :sswitch_data_2

    .line 226
    add-int/lit8 v3, v3, -0x1

    .line 229
    :goto_3
    const/4 v2, 0x1

    .line 230
    goto :goto_1

    .line 223
    :sswitch_1
    add-int/lit8 v3, v3, -0x2

    .line 224
    goto :goto_3

    .line 233
    :sswitch_2
    sparse-switch v0, :sswitch_data_3

    .line 239
    add-int/lit8 v3, v3, -0x1

    .line 242
    :goto_4
    const/4 v2, 0x1

    .line 243
    goto :goto_1

    .line 236
    :sswitch_3
    add-int/lit8 v3, v3, -0x2

    .line 237
    goto :goto_4

    .line 246
    :sswitch_4
    const/16 v5, 0x67

    if-ne v0, v5, :cond_4

    .line 247
    add-int/lit8 v3, v3, -0x2

    .line 250
    :goto_5
    const/4 v2, 0x1

    goto :goto_1

    .line 249
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 264
    :sswitch_5
    add-int/lit8 v3, v3, -0x2

    .line 265
    goto :goto_2

    .line 268
    :sswitch_6
    if-lt v3, v9, :cond_5

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_5

    .line 269
    add-int/lit8 v3, v3, -0x3

    goto :goto_2

    .line 271
    :cond_5
    add-int/lit8 v3, v3, -0x2

    .line 272
    goto :goto_2

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_0
        0x6e -> :sswitch_4
        0x72 -> :sswitch_2
    .end sparse-switch

    .line 261
    :sswitch_data_1
    .sparse-switch
        0x63 -> :sswitch_6
        0x70 -> :sswitch_5
        0x73 -> :sswitch_5
        0x74 -> :sswitch_5
        0x77 -> :sswitch_5
    .end sparse-switch

    .line 220
    :sswitch_data_2
    .sparse-switch
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x70 -> :sswitch_1
    .end sparse-switch

    .line 233
    :sswitch_data_3
    .sparse-switch
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x70 -> :sswitch_3
        0x74 -> :sswitch_3
        0x76 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getHyphenSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "-"

    return-object v0
.end method

.method public getSupportedLanguageIds()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-object v0
.end method

.method public hyphenate(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 49
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v8}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->jump_chars(Ljava/lang/String;BI)I

    move-result v0

    .line 55
    if-eq v8, v0, :cond_c

    move v1, v0

    move v0, v9

    .line 63
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5, v1}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->jump_chars(Ljava/lang/String;BI)I

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4, v1}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->reverse_jump_chars(Ljava/lang/String;BI)I

    move-result v2

    .line 68
    if-eq v1, v2, :cond_b

    move v1, v9

    .line 75
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5, v2}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->reverse_jump_chars(Ljava/lang/String;BI)I

    move-result v2

    .line 77
    if-eqz v1, :cond_0

    move v1, v10

    .line 78
    :goto_2
    if-eqz v0, :cond_1

    move v0, v10

    .line 80
    :goto_3
    add-int v3, v1, v0

    if-le v3, v4, :cond_a

    .line 81
    add-int v3, v1, v0

    .line 88
    :goto_4
    new-instance v4, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;

    invoke-direct {v4, p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v5, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;

    invoke-direct {v5, p1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;-><init>(Ljava/lang/String;)V

    move v6, v2

    move v2, v9

    .line 92
    :goto_5
    if-gt v1, v2, :cond_2

    move v7, v9

    :goto_6
    invoke-direct {p0, v5, v6, v7}, Lcom/mobipocket/common/library/reader/hyphenation/DefaultHyphenationEngine;->reverse_jump_syllable(Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;IZ)I

    move-result v7

    .line 93
    if-ne v6, v7, :cond_3

    .line 101
    if-ge v2, v3, :cond_4

    move-object v0, v4

    .line 128
    :goto_7
    return-object v0

    :cond_0
    move v1, v9

    .line 77
    goto :goto_2

    :cond_1
    move v0, v9

    .line 78
    goto :goto_3

    :cond_2
    move v7, v8

    .line 92
    goto :goto_6

    .line 98
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    .line 99
    goto :goto_5

    .line 105
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 107
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v1

    move v2, v8

    move v3, v0

    move v0, v8

    .line 109
    :goto_8
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 111
    array-length v6, v1

    if-ge v2, v6, :cond_6

    .line 113
    aget v6, v1, v2

    add-int/lit8 v7, v0, 0x1

    if-ne v6, v7, :cond_7

    move v6, v9

    .line 114
    :goto_9
    if-eqz v6, :cond_6

    .line 115
    if-eqz v3, :cond_8

    .line 117
    add-int/lit8 v3, v3, -0x1

    .line 123
    :cond_5
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 109
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7
    move v6, v8

    .line 113
    goto :goto_9

    .line 119
    :cond_8
    if-lt v0, v10, :cond_5

    .line 121
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->addHyphenationPoint(I)V

    goto :goto_a

    :cond_9
    move-object v0, v4

    .line 128
    goto :goto_7

    :cond_a
    move v3, v4

    goto :goto_4

    :cond_b
    move v2, v1

    move v1, v8

    goto :goto_1

    :cond_c
    move v0, v8

    move v1, v8

    goto/16 :goto_0
.end method
