.class public final Lcom/android/internal/net/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# static fields
.field private static final ERROR_PARSE_ERROR:Ljava/lang/String; = "Failed to parse DN"

.field private static final TAG:Ljava/lang/String; = "DNParser"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .parameter "principal"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/DNParser;->length:I

    .line 72
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 222
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 223
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 226
    :cond_a
    :goto_a
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_1f

    .line 228
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 256
    :goto_1e
    return-object v0

    .line 231
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    .line 260
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 261
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_a

    .line 236
    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1e

    .line 239
    :sswitch_4e
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 240
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_a

    .line 245
    :sswitch_63
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->cur:I

    .line 247
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 248
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    .line 250
    :goto_77
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    .line 251
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    .line 250
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_77

    .line 253
    :cond_96
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    .line 256
    :cond_ba
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1e

    .line 231
    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method private getByte(I)I
    .registers 11
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x46

    const/16 v7, 0x41

    const/16 v6, 0x39

    const/16 v5, 0x37

    const/16 v4, 0x30

    .line 350
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v2, v3, :cond_18

    .line 352
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_18
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    aget-char v0, v2, p1

    .line 358
    .local v0, b1:I
    if-lt v0, v4, :cond_30

    if-gt v0, v6, :cond_30

    .line 359
    sub-int/2addr v0, v4

    .line 368
    :goto_21
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 369
    .local v1, b2:I
    if-lt v1, v4, :cond_4a

    if-gt v1, v6, :cond_4a

    .line 370
    sub-int/2addr v1, v4

    .line 379
    :goto_2c
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 360
    .end local v1           #b2:I
    :cond_30
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3c

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3c

    .line 361
    const/16 v2, 0x57

    sub-int/2addr v0, v2

    goto :goto_21

    .line 362
    :cond_3c
    if-lt v0, v7, :cond_42

    if-gt v0, v8, :cond_42

    .line 363
    sub-int/2addr v0, v5

    goto :goto_21

    .line 365
    :cond_42
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    .restart local v1       #b2:I
    :cond_4a
    const/16 v2, 0x61

    if-lt v1, v2, :cond_56

    const/16 v2, 0x66

    if-gt v1, v2, :cond_56

    .line 372
    const/16 v2, 0x57

    sub-int/2addr v1, v2

    goto :goto_2c

    .line 373
    :cond_56
    if-lt v1, v7, :cond_5c

    if-gt v1, v8, :cond_5c

    .line 374
    sub-int/2addr v1, v5

    goto :goto_2c

    .line 376
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 270
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_14

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_14
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_2a

    .line 293
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getUTF8()C

    move-result v0

    :goto_21
    return v0

    .line 289
    :sswitch_22
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_21

    .line 274
    nop

    :sswitch_data_2a
    .sparse-switch
        0x20 -> :sswitch_22
        0x22 -> :sswitch_22
        0x23 -> :sswitch_22
        0x25 -> :sswitch_22
        0x2a -> :sswitch_22
        0x2b -> :sswitch_22
        0x2c -> :sswitch_22
        0x3b -> :sswitch_22
        0x3c -> :sswitch_22
        0x3d -> :sswitch_22
        0x3e -> :sswitch_22
        0x5c -> :sswitch_22
        0x5f -> :sswitch_22
    .end sparse-switch
.end method

.method private getUTF8()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x3f

    .line 301
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v4}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v3

    .line 302
    .local v3, res:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 304
    if-ge v3, v7, :cond_14

    .line 305
    int-to-char v4, v3

    .line 338
    :goto_13
    return v4

    .line 306
    :cond_14
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_6d

    const/16 v4, 0xf7

    if-gt v3, v4, :cond_6d

    .line 309
    const/16 v4, 0xdf

    if-gt v3, v4, :cond_3e

    .line 310
    const/4 v1, 0x1

    .line 311
    .local v1, count:I
    and-int/lit8 v3, v3, 0x1f

    .line 321
    :goto_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v1, :cond_6b

    .line 322
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 323
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v4, v5, :cond_3c

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4a

    :cond_3c
    move v4, v6

    .line 324
    goto :goto_13

    .line 312
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_3e
    const/16 v4, 0xef

    if-gt v3, v4, :cond_46

    .line 313
    const/4 v1, 0x2

    .line 314
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0xf

    goto :goto_23

    .line 316
    .end local v1           #count:I
    :cond_46
    const/4 v1, 0x3

    .line 317
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0x7

    goto :goto_23

    .line 326
    .restart local v2       #i:I
    :cond_4a
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 328
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v4}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v0

    .line 329
    .local v0, b:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 330
    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_62

    move v4, v6

    .line 331
    goto :goto_13

    .line 334
    :cond_62
    shl-int/lit8 v4, v3, 0x6

    and-int/lit8 v5, v0, 0x3f

    add-int v3, v4, v5

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 336
    .end local v0           #b:I
    :cond_6b
    int-to-char v4, v3

    goto :goto_13

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_6d
    move v4, v6

    .line 338
    goto :goto_13
.end method

.method private hexAV()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    .line 171
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v4, v5, :cond_12

    .line 173
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_12
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 177
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 182
    :goto_1c
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_59

    .line 184
    :cond_40
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 205
    :cond_44
    iget v4, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int v1, v4, v5

    .line 206
    .local v1, hexLen:I
    const/4 v4, 0x5

    if-lt v1, v4, :cond_51

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_a7

    .line 207
    :cond_51
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    .end local v1           #hexLen:I
    :cond_59
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_80

    .line 189
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 190
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 193
    :goto_6b
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v4, v5, :cond_44

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_44

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_6b

    .line 196
    :cond_80
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_9f

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_9f

    .line 197
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 200
    :cond_9f
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto/16 :goto_1c

    .line 211
    .restart local v1       #hexLen:I
    :cond_a7
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    .line 212
    .local v0, encoded:[B
    const/4 v2, 0x0

    .local v2, i:I
    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v3, v4, 0x1

    .local v3, p:I
    :goto_b0
    array-length v4, v0

    if-ge v2, v4, :cond_bf

    .line 213
    invoke-direct {p0, v3}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 212
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 216
    :cond_bf
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v6, p0, Lcom/android/internal/net/DNParser;->beg:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private nextAT()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 79
    :goto_4
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_19

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_4

    .line 81
    :cond_19
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_21

    .line 82
    const/4 v0, 0x0

    .line 130
    :goto_20
    return-object v0

    .line 86
    :cond_21
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 89
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 90
    :goto_2b
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_48

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2b

    .line 94
    :cond_48
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_56

    .line 96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_56
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 104
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_95

    .line 105
    :goto_62
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_7f

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_7f

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7f

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_62

    .line 108
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_8d

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_95

    .line 110
    :cond_8d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_95
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 118
    :goto_9b
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_b0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_b0

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_9b

    .line 123
    :cond_b0
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_10e

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_10e

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_d8

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_10e

    :cond_d8
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_f0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_10e

    :cond_f0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_108

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_10e

    .line 127
    :cond_108
    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 130
    :cond_10e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_20
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 137
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 138
    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 141
    :goto_e
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_1c

    .line 143
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_43

    .line 148
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 162
    :goto_2c
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_71

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_71

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2c

    .line 150
    :cond_43
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_64

    .line 151
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 156
    :goto_57
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 157
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    goto :goto_e

    .line 154
    :cond_64
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_57

    .line 165
    :cond_71
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "attributeType"

    .prologue
    const/4 v6, 0x0

    .line 391
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 392
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->beg:I

    .line 393
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->end:I

    .line 394
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/net/DNParser;->cur:I

    .line 395
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    .line 397
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, attType:Ljava/lang/String;
    if-nez v0, :cond_1d

    move-object v3, v6

    .line 447
    .end local v0           #attType:Ljava/lang/String;
    :goto_1c
    return-object v3

    .line 402
    .restart local v0       #attType:Ljava/lang/String;
    :cond_1d
    const-string v1, ""

    .line 404
    .local v1, attValue:Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v3, v4, :cond_27

    move-object v3, v6

    .line 405
    goto :goto_1c

    .line 408
    :cond_27
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_a6

    .line 421
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 424
    :goto_34
    :sswitch_34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v3, v1

    .line 425
    goto :goto_1c

    .line 410
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    .line 411
    goto :goto_34

    .line 413
    :sswitch_41
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    .line 414
    goto :goto_34

    .line 428
    :cond_46
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v3, v4, :cond_4e

    move-object v3, v6

    .line 429
    goto :goto_1c

    .line 432
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_62

    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_94

    .line 437
    :cond_62
    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    .line 438
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-nez v0, :cond_1d

    .line 440
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse DN"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_76} :catch_76

    .line 443
    .end local v0           #attType:Ljava/lang/String;
    .end local v1           #attValue:Ljava/lang/String;
    :catch_76
    move-exception v3

    move-object v2, v3

    .line 446
    .local v2, e:Ljava/io/IOException;
    const-string v3, "DNParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse DN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 447
    goto :goto_1c

    .line 433
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #attType:Ljava/lang/String;
    .restart local v1       #attValue:Ljava/lang/String;
    :cond_94
    :try_start_94
    iget-object v3, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_62

    .line 434
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse DN"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a6} :catch_76

    .line 408
    :sswitch_data_a6
    .sparse-switch
        0x22 -> :sswitch_3c
        0x23 -> :sswitch_41
        0x2b -> :sswitch_34
        0x2c -> :sswitch_34
        0x3b -> :sswitch_34
    .end sparse-switch
.end method
