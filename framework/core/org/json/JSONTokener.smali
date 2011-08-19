.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final in:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static dehexchar(C)I
    .registers 5
    .parameter "hex"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 597
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 598
    sub-int v0, p0, v1

    .line 604
    :goto_e
    return v0

    .line 599
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    .line 600
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 601
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 602
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 604
    :cond_25
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private nextCleanInternal()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 112
    :goto_1
    :sswitch_1
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 113
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, c:I
    sparse-switch v0, :sswitch_data_64

    move v3, v0

    .line 162
    .end local v0           #c:I
    :goto_1b
    return v3

    .line 122
    .restart local v0       #c:I
    :sswitch_1c
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_28

    move v3, v0

    .line 123
    goto :goto_1b

    .line 126
    :cond_28
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 127
    .local v2, peek:C
    sparse-switch v2, :sswitch_data_7e

    move v3, v0

    .line 145
    goto :goto_1b

    .line 130
    :sswitch_35
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    .line 131
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    const-string v4, "*/"

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, commentEnd:I
    if-ne v1, v6, :cond_4e

    .line 133
    const-string v3, "Unterminated comment"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 135
    :cond_4e
    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_1

    .line 140
    .end local v1           #commentEnd:I
    :sswitch_53
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/json/JSONTokener;->pos:I

    .line 141
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_1

    .line 154
    .end local v2           #peek:C
    :sswitch_5d
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_1

    .end local v0           #c:I
    :cond_61
    move v3, v6

    .line 162
    goto :goto_1b

    .line 114
    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_5d
        0x2f -> :sswitch_1c
    .end sparse-switch

    .line 127
    :sswitch_data_7e
    .sparse-switch
        0x2a -> :sswitch_35
        0x2f -> :sswitch_53
    .end sparse-switch
.end method

.method private nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "excluded"

    .prologue
    .line 332
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 333
    .local v1, start:I
    :goto_2
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 334
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    .local v0, c:C
    const/16 v2, 0xd

    if-eq v0, v2, :cond_23

    const/16 v2, 0xa

    if-eq v0, v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    .line 336
    :cond_23
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 339
    .end local v0           #c:C
    :goto_2b
    return-object v2

    .line 333
    .restart local v0       #c:C
    :cond_2c
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_2

    .line 339
    .end local v0           #c:C
    :cond_33
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b
.end method

.method private readArray()Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 402
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 405
    .local v1, result:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 408
    .local v0, hasTrailingSeparator:Z
    :goto_7
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    .line 423
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 426
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 428
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    .line 436
    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 410
    :sswitch_29
    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 412
    :sswitch_30
    if-eqz v0, :cond_35

    .line 413
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 430
    :cond_35
    :sswitch_35
    return-object v1

    .line 419
    :sswitch_36
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 420
    const/4 v0, 0x1

    .line 421
    goto :goto_7

    .line 433
    :sswitch_3b
    const/4 v0, 0x1

    .line 434
    goto :goto_7

    .line 408
    nop

    :sswitch_data_3e
    .sparse-switch
        -0x1 -> :sswitch_29
        0x2c -> :sswitch_36
        0x3b -> :sswitch_36
        0x5d -> :sswitch_30
    .end sparse-switch

    .line 428
    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_3b
        0x3b -> :sswitch_3b
        0x5d -> :sswitch_35
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    .local v0, escaped:C
    sparse-switch v0, :sswitch_data_4e

    move v2, v0

    .line 268
    :goto_10
    return v2

    .line 242
    :sswitch_11
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_24

    .line 243
    const-string v2, "Unterminated escape sequence"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 245
    :cond_24
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, hex:Ljava/lang/String;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 247
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    goto :goto_10

    .line 250
    .end local v1           #hex:Ljava/lang/String;
    :sswitch_3e
    const/16 v2, 0x9

    goto :goto_10

    .line 253
    :sswitch_41
    const/16 v2, 0x8

    goto :goto_10

    .line 256
    :sswitch_44
    const/16 v2, 0xa

    goto :goto_10

    .line 259
    :sswitch_47
    const/16 v2, 0xd

    goto :goto_10

    .line 262
    :sswitch_4a
    const/16 v2, 0xc

    goto :goto_10

    .line 240
    nop

    :sswitch_data_4e
    .sparse-switch
        0x62 -> :sswitch_41
        0x66 -> :sswitch_4a
        0x6e -> :sswitch_44
        0x72 -> :sswitch_47
        0x74 -> :sswitch_3e
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method private readLiteral()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 278
    const-string v5, "{}[]/\\:,=;# \t\u000c"

    invoke-direct {p0, v5}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, literal:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_14

    .line 281
    const-string v5, "Expected literal value"

    invoke-virtual {p0, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 282
    :cond_14
    const-string v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 283
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 324
    :goto_1e
    return-object v5

    .line 284
    :cond_1f
    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 285
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1e

    .line 286
    :cond_2a
    const-string v5, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 287
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1e

    .line 291
    :cond_35
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8b

    .line 292
    const/16 v0, 0xa

    .line 293
    .local v0, base:I
    move-object v4, v1

    .line 294
    .local v4, number:Ljava/lang/String;
    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 295
    :cond_51
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    const/16 v0, 0x10

    .line 302
    :cond_58
    :goto_58
    :try_start_58
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 303
    .local v2, longValue:J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-gtz v5, :cond_85

    const-wide/32 v5, -0x80000000

    cmp-long v5, v2, v5

    if-ltz v5, :cond_85

    .line 304
    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_6e} :catch_8a

    move-result-object v5

    goto :goto_1e

    .line 297
    .end local v2           #longValue:J
    :cond_70
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_58

    .line 298
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    const/16 v0, 0x8

    goto :goto_58

    .line 306
    .restart local v2       #longValue:J
    :cond_85
    :try_start_85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_88} :catch_8a

    move-result-object v5

    goto :goto_1e

    .line 308
    .end local v2           #longValue:J
    :catch_8a
    move-exception v5

    .line 319
    .end local v0           #base:I
    .end local v4           #number:Ljava/lang/String;
    :cond_8b
    :try_start_8b
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8e} :catch_90

    move-result-object v5

    goto :goto_1e

    .line 320
    :catch_90
    move-exception v5

    .line 324
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private readObject()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v2, result:Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 351
    .local v0, first:I
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_e

    .line 385
    :sswitch_d
    return-object v2

    .line 353
    :cond_e
    const/4 v4, -0x1

    if-eq v0, v4, :cond_17

    .line 354
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 358
    :cond_17
    :sswitch_17
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .local v1, name:Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_52

    .line 360
    if-nez v1, :cond_28

    .line 361
    const-string v4, "Names cannot be null"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 363
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Names must be strings, but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 373
    :cond_52
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v3

    .line 374
    .local v3, separator:I
    const/16 v4, 0x3a

    if-eq v3, v4, :cond_76

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_76

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \':\' after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 377
    :cond_76
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_92

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_92

    .line 378
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 381
    :cond_92
    check-cast v1, Ljava/lang/String;

    .end local v1           #name:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v4

    sparse-switch v4, :sswitch_data_aa

    .line 390
    const-string v4, "Unterminated object"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 383
    nop

    :sswitch_data_aa
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_17
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method private skipToEndOfLine()V
    .registers 4

    .prologue
    .line 171
    :goto_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 172
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    .local v0, c:C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 174
    :cond_1a
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 178
    .end local v0           #c:C
    :cond_20
    return-void

    .line 171
    .restart local v0       #c:C
    :cond_21
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 584
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    .line 587
    :cond_c
    return-void
.end method

.method public more()Z
    .registers 3

    .prologue
    .line 469
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()C
    .registers 4

    .prologue
    .line 478
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public next(C)C
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 487
    .local v0, result:C
    if-eq v0, p1, :cond_28

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 490
    :cond_28
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 516
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_23

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 519
    :cond_23
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 521
    return-object v0
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 501
    .local v0, nextCleanInt:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return v1

    :cond_9
    int-to-char v1, v0

    goto :goto_8
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 9
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, builder:Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 201
    .local v2, start:I
    :cond_4
    :goto_4
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 202
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 203
    .local v1, c:I
    if-ne v1, p1, :cond_3a

    .line 204
    if-nez v0, :cond_2d

    .line 206
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    :goto_2c
    return-object v3

    .line 208
    :cond_2d
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 213
    :cond_3a
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_4

    .line 214
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_4f

    .line 215
    const-string v3, "Unterminated escape sequence"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 217
    :cond_4f
    if-nez v0, :cond_56

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_56
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {p0}, Lorg/json/JSONTokener;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_4

    .line 226
    .end local v1           #c:I
    :cond_68
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 3
    .parameter "excluded"

    .prologue
    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "excluded"

    .prologue
    .line 541
    if-nez p1, :cond_8

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 544
    :cond_8
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 91
    .local v0, c:I
    sparse-switch v0, :sswitch_data_2a

    .line 106
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 107
    invoke-direct {p0}, Lorg/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v1

    :goto_11
    return-object v1

    .line 93
    :sswitch_12
    const-string v1, "End of input"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 96
    :sswitch_19
    invoke-direct {p0}, Lorg/json/JSONTokener;->readObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_11

    .line 99
    :sswitch_1e
    invoke-direct {p0}, Lorg/json/JSONTokener;->readArray()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_11

    .line 103
    :sswitch_23
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 91
    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_12
        0x22 -> :sswitch_23
        0x27 -> :sswitch_23
        0x5b -> :sswitch_1e
        0x7b -> :sswitch_19
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 5
    .parameter "thru"

    .prologue
    .line 560
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 561
    .local v0, thruStart:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_11
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 562
    return-void

    .line 561
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_11
.end method

.method public skipTo(C)C
    .registers 5
    .parameter "to"

    .prologue
    .line 570
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 571
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 572
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    move v1, p1

    .line 575
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 4
    .parameter "message"

    .prologue
    .line 446
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
