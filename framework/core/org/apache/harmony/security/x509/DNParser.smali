.class public Lorg/apache/harmony/security/x509/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field protected beg:I

.field protected chars:[C

.field protected cur:I

.field protected encoded:[B

.field protected end:I

.field protected hasQE:Z

.field protected final length:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "dn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    .line 72
    return-void
.end method

.method private getEscaped()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 272
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v1, v2, :cond_14

    .line 273
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid distinguished name string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_14
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v1, v2

    .line 277
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_2a

    .line 298
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    move-result v1

    :goto_21
    return v1

    .line 280
    :sswitch_22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    move v1, v0

    .line 281
    goto :goto_21

    :sswitch_27
    move v1, v0

    .line 294
    goto :goto_21

    .line 277
    nop

    :sswitch_data_2a
    .sparse-switch
        0x20 -> :sswitch_27
        0x22 -> :sswitch_22
        0x23 -> :sswitch_27
        0x25 -> :sswitch_27
        0x2a -> :sswitch_27
        0x2b -> :sswitch_27
        0x2c -> :sswitch_27
        0x3b -> :sswitch_27
        0x3c -> :sswitch_27
        0x3d -> :sswitch_27
        0x3e -> :sswitch_27
        0x5c -> :sswitch_22
        0x5f -> :sswitch_27
    .end sparse-switch
.end method

.method private hexAV()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    .line 173
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v3, v4, :cond_12

    .line 175
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_12
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 179
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 184
    :goto_1c
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v3, v4, :cond_40

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_40

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_40

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_59

    .line 186
    :cond_40
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 207
    :cond_44
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int v0, v3, v4

    .line 208
    .local v0, hexLen:I
    const/4 v3, 0x5

    if-lt v0, v3, :cond_51

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_a7

    .line 209
    :cond_51
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v0           #hexLen:I
    :cond_59
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_80

    .line 191
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 192
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 195
    :goto_6b
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v3, v4, :cond_44

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_44

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_6b

    .line 198
    :cond_80
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x41

    if-lt v3, v4, :cond_9f

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_9f

    .line 199
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 202
    :cond_9f
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto/16 :goto_1c

    .line 213
    .restart local v0       #hexLen:I
    :cond_a7
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    .line 214
    const/4 v1, 0x0

    .local v1, i:I
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v2, v3, 0x1

    .local v2, p:I
    :goto_b2
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    array-length v3, v3

    if-ge v1, v3, :cond_c5

    .line 215
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 214
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 218
    :cond_c5
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method


# virtual methods
.method protected escapedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 224
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 225
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 228
    :cond_a
    :goto_a
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_1f

    .line 230
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 258
    :goto_1e
    return-object v0

    .line 233
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    .line 262
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 263
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_a

    .line 238
    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1e

    .line 241
    :sswitch_4e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 242
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_a

    .line 247
    :sswitch_63
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    .line 249
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 250
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 252
    :goto_77
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    .line 253
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 252
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_77

    .line 255
    :cond_96
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    .line 258
    :cond_ba
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1e

    .line 233
    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method protected getByte(I)I
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

    .line 355
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v2, v3, :cond_18

    .line 357
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_18
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    aget-char v0, v2, p1

    .line 363
    .local v0, b1:I
    if-lt v0, v4, :cond_30

    if-gt v0, v6, :cond_30

    .line 364
    sub-int/2addr v0, v4

    .line 373
    :goto_21
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 374
    .local v1, b2:I
    if-lt v1, v4, :cond_4a

    if-gt v1, v6, :cond_4a

    .line 375
    sub-int/2addr v1, v4

    .line 384
    :goto_2c
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 365
    .end local v1           #b2:I
    :cond_30
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3c

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3c

    .line 366
    const/16 v2, 0x57

    sub-int/2addr v0, v2

    goto :goto_21

    .line 367
    :cond_3c
    if-lt v0, v7, :cond_42

    if-gt v0, v8, :cond_42

    .line 368
    sub-int/2addr v0, v5

    goto :goto_21

    .line 370
    :cond_42
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    .restart local v1       #b2:I
    :cond_4a
    const/16 v2, 0x61

    if-lt v1, v2, :cond_56

    const/16 v2, 0x66

    if-gt v1, v2, :cond_56

    .line 377
    const/16 v2, 0x57

    sub-int/2addr v1, v2

    goto :goto_2c

    .line 378
    :cond_56
    if-lt v1, v7, :cond_5c

    if-gt v1, v8, :cond_5c

    .line 379
    sub-int/2addr v1, v5

    goto :goto_2c

    .line 381
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getUTF8()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x3f

    .line 306
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v3

    .line 307
    .local v3, res:I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 309
    if-ge v3, v7, :cond_14

    .line 310
    int-to-char v4, v3

    .line 343
    :goto_13
    return v4

    .line 311
    :cond_14
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_6d

    const/16 v4, 0xf7

    if-gt v3, v4, :cond_6d

    .line 314
    const/16 v4, 0xdf

    if-gt v3, v4, :cond_3e

    .line 315
    const/4 v1, 0x1

    .line 316
    .local v1, count:I
    and-int/lit8 v3, v3, 0x1f

    .line 326
    :goto_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v1, :cond_6b

    .line 327
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 328
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v4, v5, :cond_3c

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4a

    :cond_3c
    move v4, v6

    .line 329
    goto :goto_13

    .line 317
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_3e
    const/16 v4, 0xef

    if-gt v3, v4, :cond_46

    .line 318
    const/4 v1, 0x2

    .line 319
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0xf

    goto :goto_23

    .line 321
    .end local v1           #count:I
    :cond_46
    const/4 v1, 0x3

    .line 322
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0x7

    goto :goto_23

    .line 331
    .restart local v2       #i:I
    :cond_4a
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 333
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v0

    .line 334
    .local v0, b:I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 335
    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_62

    move v4, v6

    .line 336
    goto :goto_13

    .line 339
    :cond_62
    shl-int/lit8 v4, v3, 0x6

    and-int/lit8 v5, v0, 0x3f

    add-int v3, v4, v5

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 341
    .end local v0           #b:I
    :cond_6b
    int-to-char v4, v3

    goto :goto_13

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_6d
    move v4, v6

    .line 343
    goto :goto_13
.end method

.method protected nextAT()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    .line 81
    :goto_7
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_1c

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_7

    .line 83
    :cond_1c
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_24

    .line 84
    const/4 v0, 0x0

    .line 132
    :goto_23
    return-object v0

    .line 88
    :cond_24
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 91
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 92
    :goto_2e
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_4b

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2e

    .line 96
    :cond_4b
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_59

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_59
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_98

    .line 107
    :goto_65
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_82

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_82

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_82

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_65

    .line 110
    :cond_82
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_90

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_98

    .line 112
    :cond_90
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_98
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 120
    :goto_9e
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_b3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_b3

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_9e

    .line 125
    :cond_b3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_111

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_111

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_db

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_111

    :cond_db
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_f3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_111

    :cond_f3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_10b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_111

    .line 129
    :cond_10b
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 132
    :cond_111
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_23
.end method

.method public parse()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, attType:Ljava/lang/String;
    if-nez v1, :cond_d

    .line 443
    :goto_c
    return-object v3

    .line 403
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, atav:Ljava/util/List;
    :cond_12
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v4, v5, :cond_2b

    .line 409
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v6, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_c

    .line 416
    :cond_2b
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_cc

    .line 436
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2           #attValue:Ljava/lang/String;
    :goto_47
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v4, v5, :cond_89

    .line 442
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_c

    .line 418
    :sswitch_51
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 419
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 423
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_65
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v6, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 432
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_79
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v6, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 446
    :cond_89
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_9d

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_b9

    .line 447
    :cond_9d
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #atav:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v0       #atav:Ljava/util/List;
    :cond_a5
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 454
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 455
    if-nez v1, :cond_12

    .line 456
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid distinguished name string"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 449
    :cond_b9
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_a5

    .line 450
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid distinguished name string"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    nop

    :sswitch_data_cc
    .sparse-switch
        0x22 -> :sswitch_51
        0x23 -> :sswitch_65
        0x2b -> :sswitch_79
        0x2c -> :sswitch_79
        0x3b -> :sswitch_79
    .end sparse-switch
.end method

.method protected quotedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 139
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 140
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 143
    :goto_e
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_1c

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_43

    .line 150
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 164
    :goto_2c
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_71

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_71

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2c

    .line 152
    :cond_43
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_64

    .line 153
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 158
    :goto_57
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 159
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    goto :goto_e

    .line 156
    :cond_64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_57

    .line 167
    :cond_71
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
