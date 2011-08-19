.class public Lcom/mobipocket/common/util/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field public static final MAX_RADIX:I = 0x24

.field public static final MIN_RADIX:I = 0x2

.field static final caseDiff:I = 0x20

.field static dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    new-instance v1, Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lcom/mobipocket/common/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    .line 111
    const/16 v0, 0x61

    .local v0, i:I
    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 112
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 115
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 118
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    :cond_2
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 122
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 123
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 124
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 125
    sget-object v1, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 130
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParameters2(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "parameters"

    .prologue
    .line 262
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 283
    :cond_0
    return-object p0

    .line 266
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 267
    .local v0, index:I
    if-gez v0, :cond_3

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    :goto_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 277
    if-eqz v1, :cond_2

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 281
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v1           #j:I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 161
    const-string v0, "UTF-8"

    .line 164
    const/16 v1, 0xa

    .line 165
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 167
    const/4 v1, 0x0

    .line 169
    :try_start_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v4

    :goto_0
    move-object v4, v1

    move v5, v9

    move v6, v9

    move v1, v9

    .line 172
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 178
    sget-object v8, Lcom/mobipocket/common/util/URLEncoder;->dontNeedEncoding:Lcom/mobipocket/common/util/BitSet;

    invoke-virtual {v8, v7}, Lcom/mobipocket/common/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    const/16 v5, 0x20

    if-ne v7, v5, :cond_6

    .line 180
    const/16 v5, 0x2b

    move v6, v10

    .line 184
    :goto_2
    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v10

    .line 175
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_0
    if-eqz v5, :cond_1

    .line 192
    :try_start_1
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v8

    :goto_4
    move v5, v9

    .line 200
    :cond_1
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 209
    const v8, 0xd800

    if-lt v7, v8, :cond_2

    const v8, 0xdbff

    if-gt v7, v8, :cond_2

    .line 214
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 215
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 220
    const v8, 0xdc00

    if-lt v7, v8, :cond_2

    const v8, 0xdfff

    if-gt v7, v8, :cond_2

    .line 226
    invoke-virtual {v4, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 231
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move v7, v9

    .line 237
    :goto_5
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 238
    const/16 v8, 0x25

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    aget-byte v8, v6, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v11}, Lcom/mobipocket/common/util/URLEncoder;->forDigit(II)C

    move-result v8

    .line 242
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    aget-byte v8, v6, v7

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v11}, Lcom/mobipocket/common/util/URLEncoder;->forDigit(II)C

    move-result v8

    .line 244
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 233
    :catch_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_3

    .line 246
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v6, v10

    .line 247
    goto :goto_3

    .line 251
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_5
    move-object v0, p0

    goto :goto_6

    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v4

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto :goto_2
.end method

.method private static forDigit(II)C
    .locals 2
    .parameter "digit"
    .parameter "radix"

    .prologue
    const/4 v1, 0x0

    .line 343
    if-ge p0, p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move v0, v1

    .line 352
    :goto_0
    return v0

    .line 346
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x24

    if-le p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 347
    goto :goto_0

    .line 349
    :cond_3
    const/16 v0, 0xa

    if-ge p0, v0, :cond_4

    .line 350
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_0

    .line 352
    :cond_4
    add-int/lit8 v0, p0, 0x37

    int-to-char v0, v0

    goto :goto_0
.end method
