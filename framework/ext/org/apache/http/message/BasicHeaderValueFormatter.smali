.class public Lorg/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter; = null

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .parameter "elems"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 100
    if-nez p2, :cond_4

    .line 101
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 102
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatHeaderElement(Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .parameter "elem"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 169
    if-nez p2, :cond_4

    .line 170
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 171
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNameValuePair(Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .parameter "nvp"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 325
    if-nez p2, :cond_4

    .line 326
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 327
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatParameters([Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4
    .parameter "nvps"
    .parameter "quote"
    .parameter "formatter"

    .prologue
    .line 257
    if-nez p2, :cond_4

    .line 258
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 259
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .registers 8
    .parameter "buffer"
    .parameter "value"
    .parameter "quote"

    .prologue
    const/16 v3, 0x22

    .line 393
    if-nez p3, :cond_18

    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_18

    if-nez p3, :cond_18

    .line 395
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 399
    .end local v1           #i:I
    :cond_18
    if-eqz p3, :cond_1d

    .line 400
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 402
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 403
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 405
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 407
    :cond_33
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 409
    .end local v0           #ch:C
    :cond_39
    if-eqz p3, :cond_3e

    .line 410
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 412
    :cond_3e
    return-void
.end method

.method protected estimateElementsLen([Lorg/apache/http/HeaderElement;)I
    .registers 6
    .parameter "elems"

    .prologue
    const/4 v3, 0x1

    .line 141
    if-eqz p1, :cond_6

    array-length v2, p1

    if-ge v2, v3, :cond_8

    .line 142
    :cond_6
    const/4 v2, 0x0

    .line 149
    :goto_7
    return v2

    .line 144
    :cond_8
    array-length v2, p1

    sub-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x2

    .line 145
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, p1

    if-ge v0, v2, :cond_1a

    .line 146
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    move v2, v1

    .line 149
    goto :goto_7
.end method

.method protected estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I
    .registers 7
    .parameter "elem"

    .prologue
    .line 218
    if-nez p1, :cond_4

    .line 219
    const/4 v4, 0x0

    .line 236
    :goto_3
    return v4

    .line 221
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 222
    .local v2, result:I
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_19

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 228
    :cond_19
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v1

    .line 229
    .local v1, parcnt:I
    if-lez v1, :cond_30

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    if-ge v0, v1, :cond_30

    .line 231
    invoke-interface {p1, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .end local v0           #i:I
    :cond_30
    move v4, v2

    .line 236
    goto :goto_3
.end method

.method protected estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I
    .registers 5
    .parameter "nvp"

    .prologue
    .line 366
    if-nez p1, :cond_4

    .line 367
    const/4 v2, 0x0

    .line 375
    :goto_3
    return v2

    .line 369
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 370
    .local v0, result:I
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    :cond_19
    move v2, v0

    .line 375
    goto :goto_3
.end method

.method protected estimateParametersLen([Lorg/apache/http/NameValuePair;)I
    .registers 6
    .parameter "nvps"

    .prologue
    const/4 v3, 0x1

    .line 298
    if-eqz p1, :cond_6

    array-length v2, p1

    if-ge v2, v3, :cond_8

    .line 299
    :cond_6
    const/4 v2, 0x0

    .line 306
    :goto_7
    return v2

    .line 301
    :cond_8
    array-length v2, p1

    sub-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x2

    .line 302
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, p1

    if-ge v0, v2, :cond_1a

    .line 303
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v2

    add-int/2addr v1, v2

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    move v2, v1

    .line 306
    goto :goto_7
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 8
    .parameter "buffer"
    .parameter "elems"
    .parameter "quote"

    .prologue
    .line 110
    if-nez p2, :cond_a

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header element array must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_a
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/apache/http/HeaderElement;)I

    move-result v1

    .line 116
    .local v1, len:I
    if-nez p1, :cond_28

    .line 117
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 122
    .restart local p1
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v2, p2

    if-ge v0, v2, :cond_2c

    .line 123
    if-lez v0, :cond_20

    .line 124
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 126
    :cond_20
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 119
    .end local v0           #i:I
    :cond_28
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_15

    .line 129
    .restart local v0       #i:I
    :cond_2c
    return-object p1
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 10
    .parameter "buffer"
    .parameter "elem"
    .parameter "quote"

    .prologue
    .line 179
    if-nez p2, :cond_a

    .line 180
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Header element must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_a
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v1

    .line 185
    .local v1, len:I
    if-nez p1, :cond_42

    .line 186
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 191
    .restart local p1
    :goto_15
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 192
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 194
    const/16 v4, 0x3d

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 195
    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 198
    :cond_2a
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 199
    .local v2, parcnt:I
    if-lez v2, :cond_46

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    if-ge v0, v2, :cond_46

    .line 201
    const-string v4, "; "

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 202
    invoke-interface {p2, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 188
    .end local v0           #i:I
    .end local v2           #parcnt:I
    .end local v3           #value:Ljava/lang/String;
    :cond_42
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_15

    .line 206
    .restart local v2       #parcnt:I
    .restart local v3       #value:Ljava/lang/String;
    :cond_46
    return-object p1
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 8
    .parameter "buffer"
    .parameter "nvp"
    .parameter "quote"

    .prologue
    .line 335
    if-nez p2, :cond_a

    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NameValuePair must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_a
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v0

    .line 341
    .local v0, len:I
    if-nez p1, :cond_2b

    .line 342
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 347
    .restart local p1
    :goto_15
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 348
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 350
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 351
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 354
    :cond_2a
    return-object p1

    .line 344
    .end local v1           #value:Ljava/lang/String;
    :cond_2b
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_15
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .registers 8
    .parameter "buffer"
    .parameter "nvps"
    .parameter "quote"

    .prologue
    .line 267
    if-nez p2, :cond_a

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_a
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/apache/http/NameValuePair;)I

    move-result v1

    .line 273
    .local v1, len:I
    if-nez p1, :cond_28

    .line 274
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    .end local p1
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 279
    .restart local p1
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v2, p2

    if-ge v0, v2, :cond_2c

    .line 280
    if-lez v0, :cond_20

    .line 281
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 283
    :cond_20
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 276
    .end local v0           #i:I
    :cond_28
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_15

    .line 286
    .restart local v0       #i:I
    :cond_2c
    return-object p1
.end method

.method protected isSeparator(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 424
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isUnsafe(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 437
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
