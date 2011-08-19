.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatSpecifierParser"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private i:I

.field private length:I

.field private startIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "format"

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    .line 2305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    .line 2306
    return-void
.end method

.method static synthetic access$000(Ljava/util/Formatter$FormatSpecifierParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2293
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    return v0
.end method

.method private advance()C
    .registers 4

    .prologue
    .line 2331
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-lt v0, v1, :cond_b

    .line 2332
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v0

    throw v0

    .line 2334
    :cond_b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private failNextInt()I
    .registers 2

    .prologue
    .line 2434
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2435
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    .line 2437
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private nextInt()I
    .registers 8

    .prologue
    .line 2422
    const-wide/16 v0, 0x0

    .line 2423
    .local v0, value:J
    :cond_2
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v2, v3, :cond_37

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2424
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 2425
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2426
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->failNextInt()I

    move-result v2

    .line 2429
    :goto_36
    return v2

    :cond_37
    long-to-int v2, v0

    goto :goto_36
.end method

.method private parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 7
    .parameter "token"

    .prologue
    .line 2343
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    .line 2344
    .local v2, position:I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2345
    .local v0, ch:I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2346
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    .line 2347
    .local v1, number:I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_41

    .line 2349
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2350
    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    .line 2351
    new-instance v3, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2355
    :cond_28
    const/4 v3, 0x0

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    .line 2371
    .end local v1           #number:I
    :cond_33
    :goto_33
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setFlag(I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2372
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_33

    .line 2357
    .restart local v1       #number:I
    :cond_41
    const/16 v3, 0x30

    if-ne v0, v3, :cond_48

    .line 2359
    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    goto :goto_33

    .line 2362
    :cond_48
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    .line 2382
    .end local v1           #number:I
    :goto_4c
    return-object v3

    .line 2365
    :cond_4d
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_33

    .line 2366
    const/4 v3, -0x2

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    .line 2367
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_33

    .line 2376
    :cond_59
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2377
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2378
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v3

    invoke-direct {p0, p1, v3}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4c

    .line 2379
    :cond_6c
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_75

    .line 2380
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4c

    .line 2382
    :cond_75
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_4c
.end method

.method private parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 5
    .parameter "token"

    .prologue
    .line 2411
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    .line 2412
    .local v0, conversionType:C
    invoke-virtual {p1, v0}, Ljava/util/Formatter$FormatToken;->setConversionType(C)V

    .line 2413
    const/16 v2, 0x74

    if-eq v0, v2, :cond_f

    const/16 v2, 0x54

    if-ne v0, v2, :cond_16

    .line 2414
    :cond_f
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    .line 2415
    .local v1, dateSuffix:C
    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setDateSuffix(C)V

    .line 2417
    .end local v1           #dateSuffix:C
    :cond_16
    return-object p1
.end method

.method private parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 2399
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2400
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2401
    .local v0, ch:I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2402
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2403
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    return-object v1

    .line 2406
    :cond_19
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v1

    throw v1
.end method

.method private parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;
    .registers 5
    .parameter "token"
    .parameter "width"

    .prologue
    .line 2389
    invoke-virtual {p1, p2}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 2390
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    .line 2391
    .local v0, ch:I
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_10

    .line 2392
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    .line 2394
    :goto_f
    return-object v1

    :cond_10
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    goto :goto_f
.end method

.method private peek()I
    .registers 3

    .prologue
    .line 2327
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .registers 3

    .prologue
    .line 2338
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getFormatSpecifierText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2323
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseFormatToken(I)Ljava/util/Formatter$FormatToken;
    .registers 4
    .parameter "offset"

    .prologue
    .line 2313
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    .line 2314
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    .line 2315
    new-instance v0, Ljava/util/Formatter$FormatToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatToken;-><init>(Ljava/util/Formatter$1;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v0

    return-object v0
.end method
