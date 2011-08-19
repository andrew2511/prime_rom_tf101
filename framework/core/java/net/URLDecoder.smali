.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2b

    const/4 v5, -0x1

    .line 70
    if-nez p1, :cond_b

    .line 71
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 73
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 74
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_17
    const/16 v4, 0x25

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_40

    .line 78
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_27

    move-object v4, p0

    .line 99
    :goto_26
    return-object v4

    .line 80
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 81
    .local v3, str:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 82
    aget-char v4, v3, v2

    if-ne v4, v6, :cond_37

    .line 83
    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 81
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 85
    :cond_3a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_26

    .line 88
    .end local v2           #i:I
    .end local v3           #str:[C
    :cond_40
    const/4 v0, 0x0

    .line 90
    .local v0, charset:Ljava/nio/charset/Charset;
    :try_start_41
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_44
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_41 .. :try_end_44} :catch_4a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_41 .. :try_end_44} :catch_59

    move-result-object v0

    .line 99
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    .line 91
    :catch_4a
    move-exception v1

    .line 92
    .local v1, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 94
    .end local v1           #e:Ljava/nio/charset/IllegalCharsetNameException;
    .restart local p0
    :catch_59
    move-exception v1

    .line 95
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0
.end method

.method private static decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [C

    .line 105
    .local v7, str_buf:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 106
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 108
    .local v1, buf_len:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_cc

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 110
    .local v2, c:C
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_29

    .line 111
    const/16 v2, 0x20

    aput-char v2, v7, v1

    .line 137
    .end local v2           #c:C
    :goto_23
    add-int/lit8 v2, v3, 0x1

    .line 138
    .end local v3           #i:I
    .local v2, i:I
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .line 139
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_11

    .line 112
    .local v2, c:C
    :cond_29
    const/16 v4, 0x25

    if-ne v2, v4, :cond_c8

    .line 114
    const/4 v2, 0x0

    .local v2, len:I
    move v5, v2

    .end local v2           #len:I
    .local v5, len:I
    move v4, v3

    .line 116
    .end local v3           #i:I
    .local v4, i:I
    :goto_30
    add-int/lit8 v2, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_51

    .line 117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incomplete % sequence at: "

    .end local v0           #buf:[B
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    .restart local v0       #buf:[B
    .restart local p0
    .restart local p1
    :cond_51
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 120
    .local v2, d1:I
    add-int/lit8 v3, v4, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 121
    .local v3, d2:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_6f

    const/4 v6, -0x1

    if-ne v3, v6, :cond_98

    .line 122
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #buf:[B
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid % sequence "

    .end local v1           #buf_len:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    .restart local v0       #buf:[B
    .restart local v1       #buf_len:I
    .restart local p0
    .restart local p1
    :cond_98
    add-int/lit8 v6, v5, 0x1

    .end local v5           #len:I
    .local v6, len:I
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 126
    .end local v2           #d1:I
    add-int/lit8 v3, v4, 0x3

    .line 127
    .end local v4           #i:I
    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_b0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-eq v2, v4, :cond_d3

    .line 129
    :cond_b0
    const/4 v2, 0x0

    invoke-static {v0, v2, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 130
    .local v2, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    .line 131
    .end local v6           #len:I
    .local v4, len:I
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .end local v2           #cb:Ljava/nio/CharBuffer;
    const/4 v5, 0x0

    invoke-static {v2, v5, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/2addr v1, v4

    .line 133
    goto/16 :goto_11

    .line 135
    .end local v4           #len:I
    .local v2, c:C
    :cond_c8
    aput-char v2, v7, v1

    goto/16 :goto_23

    .line 140
    .end local v2           #c:C
    :cond_cc
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 p1, 0x0

    invoke-direct {p0, v7, p1, v1}, Ljava/lang/String;-><init>([CII)V

    .end local p1
    return-object p0

    .restart local v6       #len:I
    .restart local p0
    .restart local p1
    :cond_d3
    move v5, v6

    .end local v6           #len:I
    .restart local v5       #len:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    goto/16 :goto_30
.end method
