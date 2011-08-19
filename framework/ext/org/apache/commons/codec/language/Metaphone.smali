.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# instance fields
.field private frontv:Ljava/lang/String;

.field private maxCodeLen:I

.field private varson:Ljava/lang/String;

.field private vowels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "AEIOU"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    .line 46
    const-string v0, "EIY"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    .line 51
    const-string v0, "CSPTG"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 63
    return-void
.end method

.method private isLastChar(II)Z
    .registers 4
    .parameter "wdsz"
    .parameter "n"

    .prologue
    .line 342
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .registers 7
    .parameter "string"
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, matches:Z
    if-ltz p2, :cond_14

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_14

    .line 326
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_15

    move v0, v2

    .line 328
    :cond_14
    :goto_14
    return v0

    .line 326
    :cond_15
    const/4 v1, 0x0

    move v0, v1

    goto :goto_14
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .registers 7
    .parameter "string"
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, matches:Z
    if-lez p2, :cond_13

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_13

    .line 317
    sub-int v1, p2, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_14

    move v0, v2

    .line 319
    :cond_13
    :goto_13
    return v0

    .line 317
    :cond_14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_13
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .registers 5
    .parameter "string"
    .parameter "index"

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .registers 8
    .parameter "string"
    .parameter "index"
    .parameter "test"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, matches:Z
    if-ltz p2, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 335
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, substring:Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    .end local v1           #substring:Ljava/lang/String;
    :cond_1d
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 359
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 360
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_c
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pString"

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .prologue
    .line 391
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "txt"

    .prologue
    const/16 v13, 0x58

    const/16 v12, 0x4b

    const/16 v11, 0x53

    const/16 v10, 0x48

    const/4 v9, 0x1

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, hard:Z
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_15

    .line 78
    :cond_12
    const-string v7, ""

    .line 306
    :goto_14
    return-object v7

    .line 81
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_20

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    .line 85
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 87
    .local v2, inwd:[C
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v7, 0x28

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v3, local:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 90
    .local v0, code:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    aget-char v7, v2, v7

    sparse-switch v7, :sswitch_data_2ac

    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    :goto_3f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 128
    .local v6, wdsz:I
    const/4 v4, 0x0

    .line 130
    .local v4, n:I
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v8

    if-ge v7, v8, :cond_2a5

    if-ge v4, v6, :cond_2a5

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 134
    .local v5, symb:C
    const/16 v7, 0x43

    if-eq v5, v7, :cond_b9

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 302
    :goto_60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v8

    if-le v7, v8, :cond_44

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_44

    .line 94
    .end local v4           #n:I
    .end local v5           #symb:C
    .end local v6           #wdsz:I
    :sswitch_72
    aget-char v7, v2, v9

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_7e

    .line 95
    array-length v7, v2

    sub-int/2addr v7, v9

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 97
    :cond_7e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 101
    :sswitch_82
    aget-char v7, v2, v9

    const/16 v8, 0x45

    if-ne v7, v8, :cond_8e

    .line 102
    array-length v7, v2

    sub-int/2addr v7, v9

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 104
    :cond_8e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 108
    :sswitch_92
    aget-char v7, v2, v9

    const/16 v8, 0x52

    if-ne v7, v8, :cond_9e

    .line 109
    array-length v7, v2

    sub-int/2addr v7, v9

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 112
    :cond_9e
    aget-char v7, v2, v9

    if-ne v7, v10, :cond_ae

    .line 113
    array-length v7, v2

    sub-int/2addr v7, v9

    invoke-virtual {v3, v2, v9, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 114
    const/4 v7, 0x0

    const/16 v8, 0x57

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_3f

    .line 116
    :cond_ae
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 120
    :sswitch_b2
    const/4 v7, 0x0

    aput-char v11, v2, v7

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 137
    .restart local v4       #n:I
    .restart local v5       #symb:C
    .restart local v6       #wdsz:I
    :cond_b9
    packed-switch v5, :pswitch_data_2c6

    .line 300
    :cond_bc
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 139
    :pswitch_bf
    if-nez v4, :cond_bc

    .line 140
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 144
    :pswitch_c5
    const/16 v7, 0x4d

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_d3

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 148
    :cond_d3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 152
    :pswitch_d7
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_f1

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_f1

    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_bc

    .line 157
    :cond_f1
    const-string v7, "CIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 158
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 161
    :cond_fd
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_115

    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_115

    .line 163
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 166
    :cond_115
    invoke-direct {p0, v3, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_125

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 168
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 171
    :cond_125
    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_140

    .line 172
    if-nez v4, :cond_13b

    const/4 v7, 0x3

    if-lt v6, v7, :cond_13b

    const/4 v7, 0x2

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 175
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 177
    :cond_13b
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 180
    :cond_140
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 184
    :pswitch_145
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_16c

    const/16 v7, 0x47

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_16c

    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_16c

    .line 187
    const/16 v7, 0x4a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_bc

    .line 189
    :cond_16c
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 193
    :pswitch_173
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-eqz v7, :cond_181

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 197
    :cond_181
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_197

    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_197

    add-int/lit8 v7, v4, 0x2

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 202
    :cond_197
    if-lez v4, :cond_1a9

    const-string v7, "GN"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bc

    const-string v7, "GNED"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 207
    :cond_1a9
    const/16 v7, 0x47

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_1cf

    .line 208
    const/4 v1, 0x1

    .line 212
    :goto_1b2
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_1d1

    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_1d1

    if-nez v1, :cond_1d1

    .line 215
    const/16 v7, 0x4a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 210
    :cond_1cf
    const/4 v1, 0x0

    goto :goto_1b2

    .line 217
    :cond_1d1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 221
    :pswitch_1d6
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 224
    if-lez v4, :cond_1ec

    iget-object v7, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    sub-int v8, v4, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_bc

    .line 228
    :cond_1ec
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 229
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 238
    :pswitch_1f9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 241
    :pswitch_1fe
    if-lez v4, :cond_20d

    .line 242
    const/16 v7, 0x43

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 246
    :cond_20d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 250
    :pswitch_212
    invoke-direct {p0, v3, v4, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_21f

    .line 252
    const/16 v7, 0x46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 254
    :cond_21f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 258
    :pswitch_224
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 261
    :pswitch_229
    const-string v7, "SH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_241

    const-string v7, "SIO"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_241

    const-string v7, "SIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_246

    .line 264
    :cond_241
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 266
    :cond_246
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 270
    :pswitch_24b
    const-string v7, "TIA"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25b

    const-string v7, "TIO"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_260

    .line 272
    :cond_25b
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 275
    :cond_260
    const-string v7, "TCH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bc

    .line 280
    const-string v7, "TH"

    invoke-direct {p0, v3, v4, v7}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 281
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 283
    :cond_277
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 287
    :pswitch_27e
    const/16 v7, 0x46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 289
    :pswitch_285
    invoke-direct {p0, v6, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_bc

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 291
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 295
    :pswitch_298
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 298
    :pswitch_2a0
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_bc

    .line 306
    .end local v5           #symb:C
    :cond_2a5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_14

    .line 90
    nop

    :sswitch_data_2ac
    .sparse-switch
        0x41 -> :sswitch_82
        0x47 -> :sswitch_72
        0x4b -> :sswitch_72
        0x50 -> :sswitch_72
        0x57 -> :sswitch_92
        0x58 -> :sswitch_b2
    .end sparse-switch

    .line 137
    :pswitch_data_2c6
    .packed-switch 0x41
        :pswitch_bf
        :pswitch_c5
        :pswitch_d7
        :pswitch_145
        :pswitch_bf
        :pswitch_1f9
        :pswitch_173
        :pswitch_1d6
        :pswitch_bf
        :pswitch_1f9
        :pswitch_1fe
        :pswitch_1f9
        :pswitch_1f9
        :pswitch_1f9
        :pswitch_bf
        :pswitch_212
        :pswitch_224
        :pswitch_1f9
        :pswitch_229
        :pswitch_24b
        :pswitch_bf
        :pswitch_27e
        :pswitch_285
        :pswitch_298
        :pswitch_285
        :pswitch_2a0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .registers 2
    .parameter "maxCodeLen"

    .prologue
    .line 397
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
