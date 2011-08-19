.class public final Lorg/codehaus/jackson/util/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    const/16 v8, 0x80

    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 7
    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sput-object v4, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    .line 19
    new-array v3, v7, [I

    .line 21
    .local v3, table:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    .line 22
    aput v9, v3, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    const/16 v4, 0x22

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 26
    const/16 v4, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 27
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    .line 36
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 37
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    const/16 v0, 0x80

    .local v0, c:I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 42
    and-int/lit16 v4, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_1

    .line 43
    const/4 v1, 0x2

    .line 53
    .local v1, code:I
    :goto_2
    aput v1, v3, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v1           #code:I
    :cond_1
    and-int/lit16 v4, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_2

    .line 45
    const/4 v1, 0x3

    .restart local v1       #code:I
    goto :goto_2

    .line 46
    .end local v1           #code:I
    :cond_2
    and-int/lit16 v4, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_3

    .line 48
    const/4 v1, 0x4

    .restart local v1       #code:I
    goto :goto_2

    .line 51
    .end local v1           #code:I
    :cond_3
    const/4 v1, -0x1

    .restart local v1       #code:I
    goto :goto_2

    .line 55
    .end local v1           #code:I
    :cond_4
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    .line 68
    new-array v3, v7, [I

    .line 70
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([II)V

    .line 72
    const/16 v2, 0x21

    :goto_3
    if-ge v2, v7, :cond_6

    .line 73
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    aput v6, v3, v2

    .line 72
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 77
    :cond_6
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    .line 87
    new-array v3, v7, [I

    .line 89
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {v3, v8, v8, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 91
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 98
    new-array v4, v7, [I

    sput-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    .line 101
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    invoke-static {v4, v8, v5, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x20

    invoke-static {v4, v6, v5, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 105
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x9

    aput v6, v4, v5

    .line 106
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    aput v10, v4, v10

    .line 107
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0xd

    const/16 v6, 0xd

    aput v6, v4, v5

    .line 108
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x2a

    const/16 v6, 0x2a

    aput v6, v4, v5

    .line 117
    new-array v3, v7, [I

    .line 119
    const/4 v2, 0x0

    :goto_4
    const/16 v4, 0x20

    if-ge v2, v4, :cond_7

    .line 120
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput v4, v3, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 125
    :cond_7
    const/16 v4, 0x22

    const/16 v5, 0x22

    aput v5, v3, v4

    .line 126
    const/16 v4, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v4

    .line 128
    const/16 v4, 0x8

    const/16 v5, 0x62

    aput v5, v3, v4

    .line 129
    const/16 v4, 0x9

    const/16 v5, 0x74

    aput v5, v3, v4

    .line 130
    const/16 v4, 0xc

    const/16 v5, 0x66

    aput v5, v3, v4

    .line 131
    const/16 v4, 0x6e

    aput v4, v3, v10

    .line 132
    const/16 v4, 0xd

    const/16 v5, 0x72

    aput v5, v3, v4

    .line 133
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    .line 141
    new-array v4, v8, [I

    sput-object v4, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    .line 143
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    .line 144
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_8

    .line 145
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x30

    aput v2, v4, v5

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 147
    :cond_8
    const/4 v2, 0x0

    :goto_6
    const/4 v4, 0x6

    if-ge v2, v4, :cond_9

    .line 148
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v6, v2, 0xa

    aput v6, v4, v5

    .line 149
    sget-object v4, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x41

    add-int/lit8 v6, v2, 0xa

    aput v6, v4, v5

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 151
    :cond_9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .parameter "sb"
    .parameter "content"

    .prologue
    const/16 v9, 0x30

    .line 169
    sget-object v2, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    .line 170
    .local v2, escCodes:[I
    array-length v3, v2

    .line 171
    .local v3, escLen:I
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, len:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 172
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    .local v0, c:C
    if-ge v0, v3, :cond_0

    aget v7, v2, v0

    if-nez v7, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    aget v1, v2, v0

    .line 179
    .local v1, escCode:I
    if-gez v1, :cond_2

    .line 181
    const/16 v7, 0x75

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v7, v1, 0x1

    neg-int v6, v7

    .line 185
    .local v6, value:I
    sget-object v7, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    sget-object v7, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    .end local v6           #value:I
    :cond_2
    int-to-char v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    .end local v0           #c:C
    .end local v1           #escCode:I
    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 164
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static final getInputCodeComment()[I
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1()[I
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1JsNames()[I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8()[I
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8JsNames()[I
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static final getOutputEscapes()[I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    return-object v0
.end method
