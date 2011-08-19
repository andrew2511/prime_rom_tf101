.class public Lcom/amazon/kcp/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    .line 32
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x5f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 354
    :goto_0
    return-object v0

    .line 340
    :cond_1
    const/16 v0, 0x3f

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 345
    const/16 v0, 0x26

    .line 348
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 401
    if-nez p0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String to escape shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 410
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 412
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 413
    sparse-switch v2, :sswitch_data_0

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 419
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 422
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :sswitch_3
    const-string v2, "&apos;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 428
    :sswitch_4
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 434
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_0
        0x27 -> :sswitch_3
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getGMTOffsetInMilliSeconds()I
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 243
    .local v0, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 244
    .local v8, now:Ljava/util/Calendar;
    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v6, v9

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v6, v9

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v7

    .line 253
    .local v7, gmtOffset:I
    return v7
.end method

.method public static getGMTOffsetInMinutes()I
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getGMTOffsetInMilliSeconds()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "hex"

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 303
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input should have an even number of characters, not odd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 310
    .local v1, byteArray:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 312
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 314
    .local v0, bits:I
    shr-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 310
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 317
    .end local v0           #bits:I
    :cond_1
    return-object v1
.end method

.method public static isBookTypePeriodical(I)Z
    .locals 1
    .parameter "bookType"

    .prologue
    .line 463
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCatalogItemPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 458
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(I)Z

    move-result v0

    return v0
.end method

.method public static isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z
    .locals 2
    .parameter

    .prologue
    .line 447
    if-nez p0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Book Item shouldn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(I)Z

    move-result v0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static padWithZeros(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 122
    if-gez p0, :cond_0

    const/4 v0, 0x1

    .line 123
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int v4, p1, v4

    if-ge v3, v4, :cond_1

    .line 128
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_1
    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static round(D)I
    .locals 5
    .parameter "d"

    .prologue
    .line 228
    double-to-int v0, p0

    .line 229
    .local v0, i:I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, trimmed:Ljava/lang/String;
    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 369
    if-nez p0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 378
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 379
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 381
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 382
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/amazon/kcp/util/Utils;->SUPPORTED_URL_PARAMETER_FOR_DMS_METRICS_REPORTING_SPECIAL_CHARS:Ljava/util/HashSet;

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    const/16 v3, 0x5f

    .line 386
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitString(Ljava/lang/String;C)Ljava/util/Vector;
    .locals 4
    .parameter "stringToSplit"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v0, returnVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, substringStartIndex:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 162
    .local v1, substringEndIndex:I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 165
    if-eq v2, v1, :cond_0

    .line 168
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 172
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 173
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 183
    .end local v1           #substringEndIndex:I
    .end local v2           #substringStartIndex:I
    :cond_2
    return-object v0
.end method

.method public static splitStringOnFirstOccurence(Ljava/lang/String;C)Ljava/util/Vector;
    .locals 4
    .parameter "stringToSplit"
    .parameter "delimiter"

    .prologue
    .line 199
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 201
    .local v1, returnVector:Ljava/util/Vector;
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 206
    .local v0, delimiterIndex:I
    if-lez v0, :cond_0

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 212
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 214
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    .end local v0           #delimiterIndex:I
    :cond_1
    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 277
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 281
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
