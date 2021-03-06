.class Ljava/net/HttpCookie$CookieParser;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieParser"
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME_TERMINATORS:Ljava/lang/String; = ",;= \t"

.field private static final WHITESPACE:Ljava/lang/String; = " \t"


# instance fields
.field hasExpires:Z

.field hasMaxAge:Z

.field hasVersion:Z

.field private final input:Ljava/lang/String;

.field private final inputLowerCase:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "input"

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 259
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 260
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 261
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 264
    iput-object p1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    .line 265
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private find(Ljava/lang/String;)I
    .registers 5
    .parameter "chars"

    .prologue
    .line 456
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .local v0, c:I
    :goto_2
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 457
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    move v1, v0

    .line 461
    :goto_18
    return v1

    .line 456
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 461
    :cond_1c
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_18
.end method

.method private parseHttpDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .parameter "value"

    .prologue
    .line 385
    :try_start_0
    invoke-static {}, Ljava/net/HttpCookie;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v4

    .line 394
    :goto_e
    return-object v4

    .line 386
    :catch_f
    move-exception v4

    .line 388
    invoke-static {}, Ljava/net/HttpCookie;->access$1100()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v3, :cond_2a

    aget-object v1, v0, v2

    .line 390
    .local v1, formatString:Ljava/lang/String;
    :try_start_1a
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_24} :catch_26

    move-result-object v4

    goto :goto_e

    .line 391
    :catch_26
    move-exception v4

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 394
    .end local v1           #formatString:Ljava/lang/String;
    :cond_2a
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private readAttributeName(Z)Ljava/lang/String;
    .registers 6
    .parameter "returnLowerCase"

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 403
    const-string v3, ",;= \t"

    invoke-direct {p0, v3}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, c:I
    if-eqz p1, :cond_1c

    iget-object v3, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    move-object v1, v3

    .line 405
    .local v1, forSubstring:Ljava/lang/String;
    :goto_e
    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    if-ge v3, v0, :cond_20

    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 406
    .local v2, result:Ljava/lang/String;
    :goto_19
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 407
    return-object v2

    .line 404
    .end local v1           #forSubstring:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_1c
    iget-object v3, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    move-object v1, v3

    goto :goto_e

    .line 405
    .restart local v1       #forSubstring:Ljava/lang/String;
    :cond_20
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_19
.end method

.method private readAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "terminators"

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 434
    iget v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v5, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_64

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_25

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_64

    .line 435
    :cond_25
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 436
    .local v2, quoteCharacter:C
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 437
    .local v1, closeQuote:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_57

    .line 438
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unterminated string literal in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_57
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, result:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 448
    .end local v1           #closeQuote:I
    .end local v2           #quoteCharacter:C
    :goto_63
    return-object v3

    .line 445
    .end local v3           #result:Ljava/lang/String;
    :cond_64
    invoke-direct {p0, p1}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 446
    .local v0, c:I
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 447
    .restart local v3       #result:Ljava/lang/String;
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_63
.end method

.method private readEqualsSign()Z
    .registers 3

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 415
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v1, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_21

    .line 416
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "cookie"
    .parameter "name"
    .parameter "value"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 351
    const-string v1, "comment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    #getter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$100(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 352
    #setter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    :cond_14
    :goto_14
    return-void

    .line 353
    :cond_15
    const-string v1, "commenturl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    #getter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$200(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    .line 354
    #setter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 355
    :cond_27
    const-string v1, "discard"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 356
    #setter for: Ljava/net/HttpCookie;->discard:Z
    invoke-static {p1, v3}, Ljava/net/HttpCookie;->access$302(Ljava/net/HttpCookie;Z)Z

    goto :goto_14

    .line 357
    :cond_33
    const-string v1, "domain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    #getter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$400(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    .line 358
    #setter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 359
    :cond_45
    const-string v1, "expires"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 360
    iput-boolean v3, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 361
    #getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_14

    .line 362
    invoke-direct {p0, p3}, Ljava/net/HttpCookie$CookieParser;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 363
    .local v0, date:Ljava/util/Date;
    if-eqz v0, :cond_61

    .line 364
    #calls: Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V
    invoke-static {p1, v0}, Ljava/net/HttpCookie;->access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V

    goto :goto_14

    .line 366
    :cond_61
    const-wide/16 v1, 0x0

    #setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v1, v2}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J

    goto :goto_14

    .line 369
    .end local v0           #date:Ljava/util/Date;
    :cond_67
    const-string v1, "max-age"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    #getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_81

    .line 370
    iput-boolean v3, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 371
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v1, v2}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J

    goto :goto_14

    .line 372
    :cond_81
    const-string v1, "path"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    #getter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$700(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_93

    .line 373
    #setter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 374
    :cond_93
    const-string v1, "port"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    #getter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$800(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ac

    .line 375
    if-eqz p3, :cond_a9

    move-object v1, p3

    :goto_a4
    #setter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1, v1}, Ljava/net/HttpCookie;->access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_14

    :cond_a9
    const-string v1, ""

    goto :goto_a4

    .line 376
    :cond_ac
    const-string v1, "secure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 377
    #setter for: Ljava/net/HttpCookie;->secure:Z
    invoke-static {p1, v3}, Ljava/net/HttpCookie;->access$902(Ljava/net/HttpCookie;Z)Z

    goto/16 :goto_14

    .line 378
    :cond_b9
    const-string v1, "version"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    if-nez v1, :cond_14

    .line 379
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {p1, v1}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_14
.end method

.method private skipWhitespace()V
    .registers 4

    .prologue
    .line 465
    :goto_0
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 466
    const-string v0, " \t"

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v2, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 470
    :cond_1b
    return-void

    .line 465
    :cond_1c
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v3, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v5, 0x1

    .line 273
    .local v5, pre2965:Z
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v9, "set-cookie2:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 274
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v9, "set-cookie2:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 275
    const/4 v5, 0x0

    .line 276
    iput-boolean v10, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 286
    :cond_21
    :goto_21
    invoke-direct {p0, v11}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_5e

    .line 288
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_116

    .line 289
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No cookies in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    .end local v4           #name:Ljava/lang/String;
    :cond_48
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v9, "set-cookie:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 278
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v9, "set-cookie:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_21

    .line 294
    .restart local v4       #name:Ljava/lang/String;
    :cond_5e
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-nez v8, :cond_89

    .line 295
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected \'=\' after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 299
    :cond_89
    if-eqz v5, :cond_b5

    const-string v8, ";"

    :goto_8d
    invoke-direct {p0, v8}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, value:Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v4, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v2, cookie:Ljava/net/HttpCookie;
    if-eqz v5, :cond_b8

    move v8, v11

    :goto_99
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v8}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    .line 302
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_9f
    :goto_9f
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 311
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v9, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_ba

    .line 342
    :goto_ac
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    if-eqz v8, :cond_10d

    .line 343
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v11}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_21

    .line 299
    .end local v2           #cookie:Ljava/net/HttpCookie;
    .end local v7           #value:Ljava/lang/String;
    :cond_b5
    const-string v8, ",;"

    goto :goto_8d

    .restart local v2       #cookie:Ljava/net/HttpCookie;
    .restart local v7       #value:Ljava/lang/String;
    :cond_b8
    move v8, v10

    .line 301
    goto :goto_99

    .line 315
    :cond_ba
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v9, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_cd

    .line 316
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_ac

    .line 318
    :cond_cd
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v9, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_df

    .line 319
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 322
    :cond_df
    invoke-direct {p0, v10}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, attributeName:Ljava/lang/String;
    if-eqz v0, :cond_9f

    .line 331
    if-nez v5, :cond_f7

    const-string v8, "expires"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f7

    const-string v8, "port"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_109

    :cond_f7
    const-string v8, ";"

    move-object v6, v8

    .line 335
    .local v6, terminators:Ljava/lang/String;
    :goto_fa
    const/4 v1, 0x0

    .line 336
    .local v1, attributeValue:Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-eqz v8, :cond_105

    .line 337
    invoke-direct {p0, v6}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_105
    invoke-direct {p0, v2, v0, v1}, Ljava/net/HttpCookie$CookieParser;->setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 331
    .end local v1           #attributeValue:Ljava/lang/String;
    .end local v6           #terminators:Ljava/lang/String;
    :cond_109
    const-string v8, ";,"

    move-object v6, v8

    goto :goto_fa

    .line 344
    .end local v0           #attributeName:Ljava/lang/String;
    :cond_10d
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    if-eqz v8, :cond_21

    .line 345
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v10}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_21

    .line 291
    .end local v2           #cookie:Ljava/net/HttpCookie;
    .end local v7           #value:Ljava/lang/String;
    :cond_116
    return-object v3
.end method
