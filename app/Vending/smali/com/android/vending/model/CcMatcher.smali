.class public Lcom/android/vending/model/CcMatcher;
.super Ljava/lang/Object;
.source "CcMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/CcMatcher$CcError;
    }
.end annotation


# static fields
.field public static final MATCHER:Lcom/android/vending/model/CcMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/vending/model/CcMatcher;

    invoke-direct {v0}, Lcom/android/vending/model/CcMatcher;-><init>()V

    sput-object v0, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDateFrom(II)Ljava/util/Date;
    .locals 5
    .parameter "month"
    .parameter "year"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 470
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x76c

    sub-int v1, p2, v1

    sub-int v2, p1, v4

    invoke-direct {v0, v1, v2, v4}, Ljava/util/Date;-><init>(III)V

    .line 471
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 472
    invoke-virtual {v0, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 473
    invoke-virtual {v0, v3}, Ljava/util/Date;->setHours(I)V

    .line 474
    return-object v0
.end method

.method private getMonthErrCode(Lcom/android/vending/model/CcMatcher$CcError;)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 1
    .parameter "monthErr"

    .prologue
    .line 415
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    if-ne p1, v0, :cond_1

    .line 417
    :cond_0
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_MONTH:Lcom/android/vending/model/CcMatcher$CcError;

    .line 419
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private getToday()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 460
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 461
    .local v0, temp:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Date;-><init>(III)V

    .line 462
    .local v1, today:Ljava/util/Date;
    invoke-virtual {v1, v5}, Ljava/util/Date;->setSeconds(I)V

    .line 463
    invoke-virtual {v1, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 464
    invoke-virtual {v1, v5}, Ljava/util/Date;->setHours(I)V

    .line 465
    return-object v1
.end method

.method private getYearErrCode(Lcom/android/vending/model/CcMatcher$CcError;)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 1
    .parameter "yearErr"

    .prologue
    .line 429
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    if-ne p1, v0, :cond_1

    .line 431
    :cond_0
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_YEAR:Lcom/android/vending/model/CcMatcher$CcError;

    .line 433
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private isNotNullAndNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private validateNumber(Ljava/lang/String;II)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 3
    .parameter "number"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/vending/model/CcMatcher;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;

    .line 371
    :goto_0
    return-object v2

    .line 362
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, numberAsInt:I
    if-ge v1, p2, :cond_1

    .line 364
    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    goto :goto_0

    .line 366
    :cond_1
    if-le v1, p3, :cond_2

    .line 367
    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_UPPER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 370
    .end local v1           #numberAsInt:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 371
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_NUMBER_FORMAT:Lcom/android/vending/model/CcMatcher$CcError;

    goto :goto_0
.end method

.method private validateNumber(Ljava/lang/String;IZ)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 1
    .parameter "number"
    .parameter "maxLength"
    .parameter "equalLengths"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/vending/model/CcMatcher;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;

    .line 405
    :goto_0
    return-object v0

    .line 391
    :cond_0
    if-eqz p3, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 393
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 397
    sget-object v0, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

    goto :goto_0

    .line 405
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCcType(Ljava/lang/String;)Lcom/android/vending/model/CcDefinition;
    .locals 5
    .parameter "number"

    .prologue
    .line 70
    invoke-static {}, Lcom/android/vending/model/CcDefinition;->values()[Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    .local v0, arr$:[Lcom/android/vending/model/CcDefinition;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 71
    .local v1, ccDef:Lcom/android/vending/model/CcDefinition;
    invoke-virtual {p0, v1, p1}, Lcom/android/vending/model/CcMatcher;->matchNumber(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 75
    .end local v1           #ccDef:Lcom/android/vending/model/CcDefinition;
    :goto_1
    return-object v4

    .line 70
    .restart local v1       #ccDef:Lcom/android/vending/model/CcDefinition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1           #ccDef:Lcom/android/vending/model/CcDefinition;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getCcTypeFromPrefix(Ljava/lang/String;)Lcom/android/vending/model/CcDefinition;
    .locals 5
    .parameter "number"

    .prologue
    .line 90
    invoke-static {}, Lcom/android/vending/model/CcDefinition;->values()[Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    .local v0, arr$:[Lcom/android/vending/model/CcDefinition;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 91
    .local v1, ccDef:Lcom/android/vending/model/CcDefinition;
    invoke-virtual {p0, v1, p1}, Lcom/android/vending/model/CcMatcher;->matchPrefix(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 95
    .end local v1           #ccDef:Lcom/android/vending/model/CcDefinition;
    :goto_1
    return-object v4

    .line 90
    .restart local v1       #ccDef:Lcom/android/vending/model/CcDefinition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1           #ccDef:Lcom/android/vending/model/CcDefinition;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public matchCcNumberLength(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z
    .locals 4
    .parameter "def"
    .parameter "number"

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, validLength:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getCcLength()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getCcLength()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 208
    const/4 v1, 0x1

    .line 212
    :cond_0
    return v1

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public matchChecksum(Ljava/lang/String;)Z
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 129
    invoke-direct {p0, p1}, Lcom/android/vending/model/CcMatcher;->isNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, chk:I
    const/4 v3, 0x0

    .line 132
    .local v3, timesTwo:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, v8

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, digit:I
    mul-int v4, v3, v1

    add-int/2addr v1, v4

    .line 135
    int-to-double v4, v1

    div-int/lit8 v6, v1, 0xa

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 136
    add-int/2addr v0, v1

    .line 137
    sub-int v3, v8, v3

    .line 132
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 139
    .end local v1           #digit:I
    :cond_0
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_1

    move v4, v8

    .line 141
    .end local v0           #chk:I
    .end local v2           #i:I
    .end local v3           #timesTwo:I
    :goto_1
    return v4

    .restart local v0       #chk:I
    .restart local v2       #i:I
    .restart local v3       #timesTwo:I
    :cond_1
    move v4, v9

    .line 139
    goto :goto_1

    .end local v0           #chk:I
    .end local v2           #i:I
    .end local v3           #timesTwo:I
    :cond_2
    move v4, v9

    .line 141
    goto :goto_1
.end method

.method public matchNumber(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z
    .locals 1
    .parameter "def"
    .parameter "number"

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/model/CcMatcher;->matchCcNumberLength(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/vending/model/CcMatcher;->matchChecksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/vending/model/CcMatcher;->matchPrefix(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchPrefix(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Z
    .locals 12
    .parameter "def"
    .parameter "number"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    invoke-direct {p0, p2}, Lcom/android/vending/model/CcMatcher;->isNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 157
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getPrefixRanges()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 158
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getPrefixRanges()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    const-string v7, "-"

    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, parts:[Ljava/lang/String;
    aget-object v0, v4, v9

    .line 162
    .local v0, commonPrefix:Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v11, :cond_0

    .line 163
    aget-object v6, v4, v9

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v8, v4, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 157
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    aget-object v6, v4, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 176
    .local v5, start:I
    move v1, v5

    .line 177
    .local v1, end:I
    array-length v6, v4

    if-ne v6, v11, :cond_3

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 184
    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, numberPrefix:Ljava/lang/String;
    invoke-direct {p0, v3, v5, v1}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;II)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v6

    if-nez v6, :cond_1

    move v6, v10

    .line 190
    .end local v0           #commonPrefix:Ljava/lang/String;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #numberPrefix:Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #start:I
    :goto_1
    return v6

    :cond_4
    move v6, v9

    goto :goto_1
.end method

.method public validateCvc(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 2
    .parameter "def"
    .parameter "cvc"

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getCvcLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->getCvcLength()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;IZ)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validateEndDate(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "def"
    .parameter "month"
    .parameter "year"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/CcDefinition;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/model/CcValidator$CcInputKey;",
            "Lcom/android/vending/model/CcMatcher$CcError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 311
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->hasExpDate()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v9

    .line 342
    :goto_0
    return-object v7

    .line 315
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v1, errors:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    const/16 v7, 0xc

    invoke-direct {p0, p2, v8, v7}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;II)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v3

    .line 319
    .local v3, monthErr:Lcom/android/vending/model/CcMatcher$CcError;
    const/4 v7, 0x4

    invoke-direct {p0, p3, v7, v8}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;IZ)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v6

    .line 321
    .local v6, yearErr:Lcom/android/vending/model/CcMatcher$CcError;
    if-eqz v3, :cond_1

    .line 322
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->END_MONTH:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-direct {p0, v3}, Lcom/android/vending/model/CcMatcher;->getMonthErrCode(Lcom/android/vending/model/CcMatcher$CcError;)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    if-eqz v6, :cond_2

    .line 325
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->END_YEAR:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-direct {p0, v6}, Lcom/android/vending/model/CcMatcher;->getYearErrCode(Lcom/android/vending/model/CcMatcher$CcError;)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    .line 329
    goto :goto_0

    .line 332
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 333
    .local v2, monthAsInt:I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 335
    .local v5, yearAsInt:I
    invoke-direct {p0}, Lcom/android/vending/model/CcMatcher;->getToday()Ljava/util/Date;

    move-result-object v4

    .line 336
    .local v4, today:Ljava/util/Date;
    invoke-direct {p0, v2, v5}, Lcom/android/vending/model/CcMatcher;->getDateFrom(II)Ljava/util/Date;

    move-result-object v0

    .line 337
    .local v0, end:Ljava/util/Date;
    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 338
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->END_DATE:Lcom/android/vending/model/CcValidator$CcInputKey;

    sget-object v8, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_PAST:Lcom/android/vending/model/CcMatcher$CcError;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v9

    goto :goto_0

    :cond_5
    move-object v7, v1

    goto :goto_0
.end method

.method public validateIssueNumber(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Lcom/android/vending/model/CcMatcher$CcError;
    .locals 2
    .parameter "def"
    .parameter "issue"

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->hasIssueNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;IZ)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v0

    goto :goto_0
.end method

.method public validateStartDate(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "def"
    .parameter "month"
    .parameter "year"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/CcDefinition;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/model/CcValidator$CcInputKey;",
            "Lcom/android/vending/model/CcMatcher$CcError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 258
    invoke-virtual {p1}, Lcom/android/vending/model/CcDefinition;->hasStartDate()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v9

    .line 296
    :goto_0
    return-object v7

    .line 262
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, errors:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    const/16 v7, 0xc

    invoke-direct {p0, p2, v8, v7}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;II)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v2

    .line 266
    .local v2, monthErr:Lcom/android/vending/model/CcMatcher$CcError;
    const/4 v7, 0x4

    invoke-direct {p0, p3, v7, v8}, Lcom/android/vending/model/CcMatcher;->validateNumber(Ljava/lang/String;IZ)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v6

    .line 268
    .local v6, yearErr:Lcom/android/vending/model/CcMatcher$CcError;
    if-eqz v2, :cond_1

    .line 269
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->START_MONTH:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    if-eqz v6, :cond_2

    .line 272
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->START_YEAR:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v0

    .line 276
    goto :goto_0

    .line 279
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, monthAsInt:I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 283
    .local v5, yearAsInt:I
    const/16 v7, 0x7bb

    if-ge v5, v7, :cond_4

    .line 284
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->START_YEAR:Lcom/android/vending/model/CcValidator$CcInputKey;

    sget-object v8, Lcom/android/vending/model/CcMatcher$CcError;->OUT_OF_LOWER_RANGE:Lcom/android/vending/model/CcMatcher$CcError;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 285
    goto :goto_0

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/android/vending/model/CcMatcher;->getToday()Ljava/util/Date;

    move-result-object v4

    .line 289
    .local v4, today:Ljava/util/Date;
    invoke-direct {p0, v1, v5}, Lcom/android/vending/model/CcMatcher;->getDateFrom(II)Ljava/util/Date;

    move-result-object v3

    .line 290
    .local v3, start:Ljava/util/Date;
    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 291
    sget-object v7, Lcom/android/vending/model/CcValidator$CcInputKey;->START_DATE:Lcom/android/vending/model/CcValidator$CcInputKey;

    sget-object v8, Lcom/android/vending/model/CcMatcher$CcError;->DATE_CANNOT_BE_IN_FUTURE:Lcom/android/vending/model/CcMatcher$CcError;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 293
    goto :goto_0

    :cond_5
    move-object v7, v9

    .line 296
    goto :goto_0
.end method
