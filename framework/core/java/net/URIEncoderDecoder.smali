.class Ljava/net/URIEncoderDecoder;
.super Ljava/lang/Object;
.source "URIEncoderDecoder.java"


# static fields
.field static final digits:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x25

    const/16 v9, 0x10

    const/4 v8, -0x1

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v5, result:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_a8

    .line 185
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    .local v0, c:C
    if-ne v0, v10, :cond_a1

    .line 187
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 189
    :cond_1f
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_40

    .line 190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incomplete % sequence at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_40
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 193
    .local v1, d1:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 194
    .local v2, d2:I
    if-eq v1, v8, :cond_58

    if-ne v2, v8, :cond_81

    .line 195
    :cond_58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid % sequence "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_81
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    add-int/lit8 v3, v3, 0x3

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_96

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_1f

    .line 201
    :cond_96
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 204
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_a1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 206
    goto/16 :goto_10

    .line 207
    .end local v0           #c:C
    :cond_a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static encodeOthers(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_53

    .line 149
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 150
    .local v2, ch:C
    const/16 v5, 0x7f

    if-gt v2, v5, :cond_1a

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 153
    :cond_1a
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    sget-object v6, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 154
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2c
    array-length v5, v1

    if-ge v4, v5, :cond_17

    .line 155
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 161
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7e

    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 114
    .local v2, ch:C
    const/16 v5, 0x61

    if-lt v2, v5, :cond_18

    const/16 v5, 0x7a

    if-le v2, v5, :cond_3f

    :cond_18
    const/16 v5, 0x41

    if-lt v2, v5, :cond_20

    const/16 v5, 0x5a

    if-le v2, v5, :cond_3f

    :cond_20
    const/16 v5, 0x30

    if-lt v2, v5, :cond_28

    const/16 v5, 0x39

    if-le v2, v5, :cond_3f

    :cond_28
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_3f

    const/16 v5, 0x7f

    if-le v2, v5, :cond_45

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_45

    .line 120
    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 122
    :cond_45
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    sget-object v6, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 123
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_57
    array-length v5, v1

    if-ge v4, v5, :cond_42

    .line 124
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 130
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static validate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 49
    const/4 v3, 0x0

    .local v3, i:I
    :cond_6
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_a2

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, ch:C
    if-ne v0, v8, :cond_68

    .line 53
    :cond_12
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_22

    .line 54
    new-instance v4, Ljava/net/URISyntaxException;

    const-string v5, "Incomplete % sequence"

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 56
    :cond_22
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 57
    .local v1, d1:I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 58
    .local v2, d2:I
    if-eq v1, v6, :cond_3a

    if-ne v2, v6, :cond_59

    .line 59
    :cond_3a
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid % sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 63
    :cond_59
    add-int/lit8 v3, v3, 0x3

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_12

    goto :goto_6

    .line 68
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_68
    const/16 v4, 0x61

    if-lt v0, v4, :cond_70

    const/16 v4, 0x7a

    if-le v0, v4, :cond_9e

    :cond_70
    const/16 v4, 0x41

    if-lt v0, v4, :cond_78

    const/16 v4, 0x5a

    if-le v0, v4, :cond_9e

    :cond_78
    const/16 v4, 0x30

    if-lt v0, v4, :cond_80

    const/16 v4, 0x39

    if-le v0, v4, :cond_9e

    :cond_80
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gt v4, v6, :cond_9e

    const/16 v4, 0x7f

    if-le v0, v4, :cond_96

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 72
    :cond_96
    new-instance v4, Ljava/net/URISyntaxException;

    const-string v5, "Illegal character"

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 74
    :cond_9e
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto/16 :goto_6

    .line 76
    .end local v0           #ch:C
    :cond_a2
    return-void
.end method

.method static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_13

    const/16 v2, 0x7a

    if-le v0, v2, :cond_32

    :cond_13
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_32

    :cond_1b
    const/16 v2, 0x30

    if-lt v0, v2, :cond_23

    const/16 v2, 0x39

    if-le v0, v2, :cond_32

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_32

    .line 84
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character"

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 86
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_1

    .line 88
    .end local v0           #ch:C
    :cond_35
    return-void
.end method
