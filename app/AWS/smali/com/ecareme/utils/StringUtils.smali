.class public final Lcom/ecareme/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_ZERO:C = '0'

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/ecareme/utils/StringUtils;->EMPTY_CHAR_ARRAY:[C

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static convertEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "original"
    .parameter "fromEncoding"
    .parameter "toEncoding"

    .prologue
    .line 275
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-object v1

    .line 277
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, p0

    .line 280
    goto :goto_0
.end method

.method public static final getCharArray(CI)[C
    .locals 3
    .parameter "c"
    .parameter "len"

    .prologue
    .line 76
    if-gez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length must > 0. len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_1

    .line 82
    sget-object v0, Lcom/ecareme/utils/StringUtils;->EMPTY_CHAR_ARRAY:[C

    .line 84
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ecareme/utils/StringUtils;->makeCharArray(CI)[C

    move-result-object v0

    goto :goto_0
.end method

.method private static final makeCharArray(CI)[C
    .locals 1
    .parameter "c"
    .parameter "len"

    .prologue
    .line 89
    new-array v0, p1, [C

    .line 92
    .local v0, chars:[C
    :goto_0
    if-gtz p1, :cond_0

    .line 96
    return-object v0

    .line 94
    :cond_0
    add-int/lit8 p1, p1, -0x1

    aput-char p0, v0, p1

    goto :goto_0
.end method

.method public static final padLeadingSpace(II)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 168
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padLeadingSpace(JI)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 200
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padLeadingSpace(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "inStr"
    .parameter "totalLength"

    .prologue
    .line 136
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padLeadingZero(II)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 184
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padLeadingZero(JI)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 216
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padLeadingZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "inStr"
    .parameter "totalLength"

    .prologue
    .line 152
    const/16 v0, 0x30

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingSpace(II)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 176
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingSpace(JI)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 208
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingSpace(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "inStr"
    .parameter "totalLength"

    .prologue
    .line 144
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingZero(II)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 192
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingZero(JI)Ljava/lang/String;
    .locals 3
    .parameter "x"
    .parameter "totalLength"

    .prologue
    .line 224
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final padTailingZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "inStr"
    .parameter "totalLength"

    .prologue
    .line 160
    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/ecareme/utils/StringUtils;->paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final paddingString(Ljava/lang/String;CIZ)Ljava/lang/String;
    .locals 3
    .parameter "inStr"
    .parameter "padChar"
    .parameter "totalLength"
    .parameter "leading"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 111
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ecareme/utils/StringUtils;->makeCharArray(CI)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 127
    :goto_0
    return-object v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    move-object v1, p0

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    if-eqz p3, :cond_2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Lcom/ecareme/utils/StringUtils;->makeCharArray(CI)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Lcom/ecareme/utils/StringUtils;->makeCharArray(CI)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static properties2String(Ljava/util/Properties;)Ljava/lang/String;
    .locals 3
    .parameter "props"

    .prologue
    .line 56
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v1, sw:Ljava/io/StringWriter;
    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 61
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static string2Properties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 3
    .parameter "str"

    .prologue
    .line 39
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 42
    .local v1, props:Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final toBase64StringByUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 234
    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    .line 238
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, p0

    .line 243
    goto :goto_0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/StringUtils;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static toBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    const/16 v6, 0x45

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    const-string v0, "true"

    if-eq p0, v0, :cond_0

    const-string v0, "yes"

    if-eq p0, v0, :cond_0

    const-string v0, "on"

    if-eq p0, v0, :cond_0

    const-string v0, "1"

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v3

    .line 333
    :goto_0
    return v0

    .line 305
    :cond_1
    const-string v0, "false"

    if-eq p0, v0, :cond_2

    const-string v0, "no"

    if-eq p0, v0, :cond_2

    const-string v0, "off"

    if-eq p0, v0, :cond_2

    const-string v0, "0"

    if-ne p0, v0, :cond_3

    :cond_2
    move v0, v2

    .line 307
    goto :goto_0

    .line 309
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, p1

    .line 311
    goto :goto_0

    .line 313
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 333
    goto :goto_0

    .line 317
    :pswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_9

    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_9

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_d

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_d

    :cond_b
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_d

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    .line 329
    :pswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_12

    :cond_e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_12

    :cond_f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_12

    :cond_10
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_12

    :cond_11
    move v0, v3

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final toUTF8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "base64"

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 263
    :goto_0
    return-object v1

    .line 258
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, p0

    .line 263
    goto :goto_0
.end method
