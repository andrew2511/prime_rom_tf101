.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final ASCII:[C = null

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 96
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 100
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ASCII:[C

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    sget-object v1, Ljava/lang/String;->ASCII:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 102
    sget-object v1, Ljava/lang/String;->ASCII:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 104
    :cond_1c
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 119
    iput v1, p0, Ljava/lang/String;->offset:I

    .line 120
    iput v1, p0, Ljava/lang/String;->count:I

    .line 121
    return-void
.end method

.method constructor <init>(II[C)V
    .registers 4
    .parameter "offset"
    .parameter "charCount"
    .parameter "chars"

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p3, p0, Ljava/lang/String;->value:[C

    .line 442
    iput p1, p0, Ljava/lang/String;->offset:I

    .line 443
    iput p2, p0, Ljava/lang/String;->count:I

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "toCopy"

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iget-object v0, p1, Ljava/lang/String;->value:[C

    array-length v0, v0

    iget v1, p1, Ljava/lang/String;->count:I

    if-ne v0, v1, :cond_17

    iget-object v0, p1, Ljava/lang/String;->value:[C

    :goto_c
    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 456
    iget-object v0, p0, Ljava/lang/String;->value:[C

    array-length v0, v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 457
    return-void

    .line 452
    :cond_17
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget v2, p1, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_c
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .registers 8
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 129
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 130
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 131
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->count:I

    aput-char p2, v0, v1

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "s1"
    .parameter "v1"

    .prologue
    const/4 v6, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    if-nez p1, :cond_8

    .line 566
    const-string p1, "null"

    .line 568
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, s2:Ljava/lang/String;
    iget v2, p1, Ljava/lang/String;->count:I

    iget v3, v1, Ljava/lang/String;->count:I

    add-int v0, v2, v3

    .line 570
    .local v0, len:I
    new-array v2, v0, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 571
    iput v6, p0, Ljava/lang/String;->offset:I

    .line 572
    iget-object v2, p1, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v2, v1, Ljava/lang/String;->value:[C

    iget v3, v1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    iget v6, v1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput v0, p0, Ljava/lang/String;->count:I

    .line 575
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    if-nez p1, :cond_8

    .line 465
    const-string p1, "null"

    .line 467
    :cond_8
    if-nez p2, :cond_c

    .line 468
    const-string p2, "null"

    .line 470
    :cond_c
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 471
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 472
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 473
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "s1"
    .parameter "s2"
    .parameter "s3"

    .prologue
    const/4 v4, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    if-nez p1, :cond_8

    .line 483
    const-string p1, "null"

    .line 485
    :cond_8
    if-nez p2, :cond_c

    .line 486
    const-string p2, "null"

    .line 488
    :cond_c
    if-nez p3, :cond_10

    .line 489
    const-string p3, "null"

    .line 491
    :cond_10
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iget v1, p3, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 492
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 493
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 494
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget-object v0, p3, Ljava/lang/String;->value:[C

    iget v1, p3, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    iget v4, p3, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "stringBuffer"

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 505
    monitor-enter p1

    .line 506
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 507
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 508
    monitor-exit p1

    .line 509
    return-void

    .line 508
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "stringBuilder"

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    if-nez p1, :cond_e

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringBuilder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_e
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 555
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 556
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 557
    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 558
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 140
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 141
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5
    .parameter "data"
    .parameter "high"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 158
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 7
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    or-int v1, p2, p3

    if-ltz v1, :cond_b

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_11

    .line 171
    :cond_b
    array-length v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1

    .line 173
    :cond_11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 174
    .local v0, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    iput v1, p0, Ljava/lang/String;->count:I

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/String;->offset:I

    .line 176
    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_31

    .line 177
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/lang/String;->value:[C

    .line 181
    :goto_30
    return-void

    .line 179
    :cond_31
    sget-object v1, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v1, p0, Ljava/lang/String;->value:[C

    goto :goto_30
.end method

.method public constructor <init>([BIII)V
    .registers 9
    .parameter "data"
    .parameter "high"
    .parameter "offset"
    .parameter "byteCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    or-int v2, p3, p4

    if-ltz v2, :cond_b

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p4, v2, :cond_11

    .line 197
    :cond_b
    array-length v2, p1

    invoke-direct {p0, v2, p3, p4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 199
    :cond_11
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    .line 200
    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 201
    iput p4, p0, Ljava/lang/String;->count:I

    .line 202
    shl-int/lit8 p2, p2, 0x8

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_31

    .line 204
    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, offset:I
    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    .end local v1           #offset:I
    .restart local p3
    goto :goto_1d

    .line 206
    :cond_31
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p4}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 223
    return-void
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .registers 34
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charset"

    .prologue
    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    or-int v24, p2, p3

    if-ltz v24, :cond_14

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, p2

    move/from16 v0, p3

    move/from16 v1, v24

    if-le v0, v1, :cond_26

    .line 256
    :cond_14
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v24

    throw v24

    .line 261
    :cond_26
    invoke-virtual/range {p4 .. p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, canonicalCharsetName:Ljava/lang/String;
    const-string v24, "UTF-8"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_20e

    .line 263
    move-object/from16 v9, p1

    .line 264
    .local v9, d:[B
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 266
    .local v20, v:[C
    move/from16 v12, p2

    .line 267
    .local v12, idx:I
    add-int v14, p2, p3

    .line 268
    .local v14, last:I
    const/16 v16, 0x0

    .local v16, s:I
    move/from16 v17, v16

    .end local v16           #s:I
    .local v17, s:I
    move v13, v12

    .line 270
    .end local v12           #idx:I
    .local v13, idx:I
    :goto_46
    if-ge v13, v14, :cond_2d9

    .line 271
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idx:I
    .restart local v12       #idx:I
    aget-byte v6, v9, v13

    .line 272
    .local v6, b0:B
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_65

    .line 275
    move v0, v6

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 276
    .local v21, val:I
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v17

    .end local v21           #val:I
    :goto_61
    move/from16 v17, v16

    .end local v16           #s:I
    .restart local v17       #s:I
    move v13, v12

    .line 353
    .end local v12           #idx:I
    .restart local v13       #idx:I
    goto :goto_46

    .line 277
    .end local v13           #idx:I
    .restart local v12       #idx:I
    :cond_65
    move v0, v6

    and-int/lit16 v0, v0, 0xe0

    move/from16 v24, v0

    const/16 v25, 0xc0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a6

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    const/16 v25, 0xe0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a6

    move v0, v6

    and-int/lit16 v0, v0, 0xf8

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a6

    move v0, v6

    and-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    const/16 v25, 0xf8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a6

    move v0, v6

    and-int/lit16 v0, v0, 0xfe

    move/from16 v24, v0

    const/16 v25, 0xfc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d2

    .line 279
    :cond_a6
    const/16 v19, 0x1

    .line 280
    .local v19, utfCount:I
    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    const/16 v25, 0xe0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e0

    const/16 v19, 0x2

    .line 292
    :cond_b7
    :goto_b7
    add-int v24, v12, v19

    move/from16 v0, v24

    move v1, v14

    if-le v0, v1, :cond_110

    .line 293
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    const v24, 0xfffd

    aput-char v24, v20, v17

    .line 355
    .end local v6           #b0:B
    .end local v19           #utfCount:I
    :goto_c5
    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_1db

    .line 357
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 358
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 359
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 393
    .end local v9           #d:[B
    .end local v12           #idx:I
    .end local v14           #last:I
    .end local v16           #s:I
    .end local v20           #v:[C
    :goto_df
    return-void

    .line 281
    .restart local v6       #b0:B
    .restart local v9       #d:[B
    .restart local v12       #idx:I
    .restart local v14       #last:I
    .restart local v17       #s:I
    .restart local v19       #utfCount:I
    .restart local v20       #v:[C
    :cond_e0
    move v0, v6

    and-int/lit16 v0, v0, 0xf8

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f0

    const/16 v19, 0x3

    goto :goto_b7

    .line 282
    :cond_f0
    move v0, v6

    and-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    const/16 v25, 0xf8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_100

    const/16 v19, 0x4

    goto :goto_b7

    .line 283
    :cond_100
    move v0, v6

    and-int/lit16 v0, v0, 0xfe

    move/from16 v24, v0

    const/16 v25, 0xfc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b7

    const/16 v19, 0x5

    goto :goto_b7

    .line 298
    :cond_110
    const/16 v24, 0x1f

    const/16 v25, 0x1

    sub-int v25, v19, v25

    shr-int v24, v24, v25

    and-int v21, v6, v24

    .line 299
    .restart local v21       #val:I
    const/4 v11, 0x0

    .local v11, i:I
    move v13, v12

    .end local v12           #idx:I
    .restart local v13       #idx:I
    :goto_11c
    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_14a

    .line 300
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idx:I
    .restart local v12       #idx:I
    aget-byte v5, v9, v13

    .line 301
    .local v5, b:B
    move v0, v5

    and-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    const/16 v25, 0x80

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_140

    .line 302
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    const v24, 0xfffd

    aput-char v24, v20, v17

    .line 303
    add-int/lit8 v12, v12, -0x1

    move/from16 v17, v16

    .end local v16           #s:I
    .restart local v17       #s:I
    move v13, v12

    .line 304
    .end local v12           #idx:I
    .restart local v13       #idx:I
    goto/16 :goto_46

    .line 307
    .end local v13           #idx:I
    .restart local v12       #idx:I
    :cond_140
    shl-int/lit8 v21, v21, 0x6

    .line 308
    and-int/lit8 v24, v5, 0x3f

    or-int v21, v21, v24

    .line 299
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12           #idx:I
    .restart local v13       #idx:I
    goto :goto_11c

    .line 326
    .end local v5           #b:B
    :cond_14a
    const/16 v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_16f

    const v24, 0xd800

    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_16f

    const v24, 0xdfff

    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_16f

    .line 327
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    const v24, 0xfffd

    aput-char v24, v20, v17

    move/from16 v17, v16

    .line 328
    .end local v16           #s:I
    .restart local v17       #s:I
    goto/16 :goto_46

    .line 332
    :cond_16f
    const v24, 0x10ffff

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_183

    .line 333
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    const v24, 0xfffd

    aput-char v24, v20, v17

    move/from16 v17, v16

    .line 334
    .end local v16           #s:I
    .restart local v17       #s:I
    goto/16 :goto_46

    .line 338
    :cond_183
    const/high16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_197

    .line 339
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v17

    :goto_194
    move v12, v13

    .line 349
    .end local v13           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_61

    .line 341
    .end local v12           #idx:I
    .end local v16           #s:I
    .restart local v13       #idx:I
    .restart local v17       #s:I
    :cond_197
    const v24, 0xffff

    and-int v23, v21, v24

    .line 342
    .local v23, x:I
    shr-int/lit8 v24, v21, 0x10

    and-int/lit8 v18, v24, 0x1f

    .line 343
    .local v18, u:I
    const/16 v24, 0x1

    sub-int v24, v18, v24

    const v25, 0xffff

    and-int v22, v24, v25

    .line 344
    .local v22, w:I
    const v24, 0xd800

    shl-int/lit8 v25, v22, 0x6

    or-int v24, v24, v25

    shr-int/lit8 v25, v23, 0xa

    or-int v10, v24, v25

    .line 345
    .local v10, hi:I
    const v24, 0xdc00

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v25, v0

    or-int v15, v24, v25

    .line 346
    .local v15, lo:I
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    move v0, v10

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v17

    .line 347
    add-int/lit8 v17, v16, 0x1

    .end local v16           #s:I
    .restart local v17       #s:I
    move v0, v15

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v16

    move/from16 v16, v17

    .end local v17           #s:I
    .restart local v16       #s:I
    goto :goto_194

    .line 351
    .end local v10           #hi:I
    .end local v11           #i:I
    .end local v13           #idx:I
    .end local v15           #lo:I
    .end local v16           #s:I
    .end local v18           #u:I
    .end local v19           #utfCount:I
    .end local v21           #val:I
    .end local v22           #w:I
    .end local v23           #x:I
    .restart local v12       #idx:I
    .restart local v17       #s:I
    :cond_1d2
    add-int/lit8 v16, v17, 0x1

    .end local v17           #s:I
    .restart local v16       #s:I
    const v24, 0xfffd

    aput-char v24, v20, v17

    goto/16 :goto_61

    .line 362
    .end local v6           #b0:B
    :cond_1db
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 363
    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 364
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 365
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_df

    .line 367
    .end local v9           #d:[B
    .end local v12           #idx:I
    .end local v14           #last:I
    .end local v16           #s:I
    .end local v20           #v:[C
    :cond_20e
    const-string v24, "ISO-8859-1"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_246

    .line 368
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 369
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 370
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->isoLatin1BytesToChars([BII[C)V

    goto/16 :goto_df

    .line 372
    :cond_246
    const-string v24, "US-ASCII"

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27e

    .line 373
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 374
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 375
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->asciiBytesToChars([BII[C)V

    goto/16 :goto_df

    .line 378
    :cond_27e
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 379
    .local v8, cb:Ljava/nio/CharBuffer;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 380
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v24, v0

    if-lez v24, :cond_2cf

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 388
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v28, v0

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_df

    .line 390
    :cond_2cf
    sget-object v24, Llibcore/util/EmptyArray;->CHAR:[C

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_df

    .end local v8           #cb:Ljava/nio/CharBuffer;
    .restart local v9       #d:[B
    .restart local v13       #idx:I
    .restart local v14       #last:I
    .restart local v17       #s:I
    .restart local v20       #v:[C
    :cond_2d9
    move/from16 v16, v17

    .end local v17           #s:I
    .restart local v16       #s:I
    move v12, v13

    .end local v13           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_c5
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 238
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .registers 5
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 402
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 403
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .parameter "data"

    .prologue
    .line 413
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 414
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 7
    .parameter "data"
    .parameter "offset"
    .parameter "charCount"

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    or-int v0, p2, p3

    if-ltz v0, :cond_c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_12

    .line 428
    :cond_c
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 430
    :cond_12
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 431
    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 432
    iput p3, p0, Ljava/lang/String;->count:I

    .line 433
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    return-void
.end method

.method public constructor <init>([III)V
    .registers 9
    .parameter "codePoints"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    if-nez p1, :cond_b

    .line 527
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 529
    :cond_b
    or-int v3, p2, p3

    if-ltz v3, :cond_13

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_19

    .line 530
    :cond_13
    array-length v3, p1

    invoke-direct {p0, v3, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 532
    :cond_19
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    .line 533
    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 534
    add-int v1, p2, p3

    .line 535
    .local v1, end:I
    const/4 v0, 0x0

    .line 536
    .local v0, c:I
    move v2, p2

    .local v2, i:I
    :goto_26
    if-ge v2, v1, :cond_34

    .line 537
    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 539
    :cond_34
    iput v0, p0, Ljava/lang/String;->count:I

    .line 540
    return-void
.end method

.method private compareValue(C)C
    .registers 3
    .parameter "ch"

    .prologue
    .line 607
    const/16 v0, 0x80

    if-ge p1, v0, :cond_12

    .line 608
    const/16 v0, 0x41

    if-gt v0, p1, :cond_10

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_10

    .line 609
    add-int/lit8 v0, p1, 0x20

    int-to-char v0, v0

    .line 613
    :goto_f
    return v0

    :cond_10
    move v0, p1

    .line 611
    goto :goto_f

    .line 613
    :cond_12
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_f
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 717
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 739
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .registers 7
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fastIndexOf(II)I
    .registers 9
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1013
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1014
    .local v0, _count:I
    if-ge p2, v0, :cond_1d

    .line 1015
    if-gez p2, :cond_7

    .line 1016
    const/4 p2, 0x0

    .line 1018
    :cond_7
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1019
    .local v1, _offset:I
    iget v5, p0, Ljava/lang/String;->count:I

    add-int v4, v1, v5

    .line 1020
    .local v4, last:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1021
    .local v2, _value:[C
    add-int v3, v1, p2

    .local v3, i:I
    :goto_11
    if-ge v3, v4, :cond_1d

    .line 1022
    aget-char v5, v2, v3

    if-ne v5, p1, :cond_1a

    .line 1023
    sub-int v5, v3, v1

    .line 1027
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :goto_19
    return v5

    .line 1021
    .restart local v1       #_offset:I
    .restart local v2       #_value:[C
    .restart local v3       #i:I
    .restart local v4       #last:I
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1027
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :cond_1d
    const/4 v5, -0x1

    goto :goto_19
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "format"
    .parameter "args"

    .prologue
    .line 2078
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "locale"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 2099
    if-nez p1, :cond_a

    .line 2100
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null format argument"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2102
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p2, :cond_26

    const/4 v3, 0x0

    :goto_11
    add-int v0, v2, v3

    .line 2103
    .local v0, bufferSize:I
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 2104
    .local v1, f:Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2102
    .end local v0           #bufferSize:I
    .end local v1           #f:Ljava/util/Formatter;
    :cond_26
    array-length v3, p2

    mul-int/lit8 v3, v3, 0xa

    goto :goto_11
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .registers 5
    .parameter "index"

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .registers 14
    .parameter "haystackString"
    .parameter "needleString"
    .parameter "cache"
    .parameter "md2"
    .parameter "lastChar"

    .prologue
    .line 2119
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 2120
    .local v0, haystack:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 2121
    .local v1, haystackOffset:I
    iget p0, p0, Ljava/lang/String;->count:I

    .line 2122
    .local p0, haystackLength:I
    iget-object v3, p1, Ljava/lang/String;->value:[C

    .line 2123
    .local v3, needle:[C
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 2124
    .local v5, needleOffset:I
    iget p1, p1, Ljava/lang/String;->count:I

    .line 2125
    .local p1, needleLength:I
    const/4 v2, 0x1

    sub-int v4, p1, v2

    .line 2126
    .local v4, needleLengthMinus1:I
    add-int/2addr p0, v1

    .line 2127
    .local p0, haystackEnd:I
    add-int p1, v1, v4

    .local p1, i:I
    :goto_12
    if-ge p1, p0, :cond_47

    .line 2128
    aget-char v2, v0, p1

    if-ne p4, v2, :cond_3c

    .line 2129
    const/4 v2, 0x0

    .local v2, j:I
    :goto_19
    if-ge v2, v4, :cond_38

    .line 2130
    add-int v6, v2, v5

    aget-char v6, v3, v6

    add-int v7, p1, v2

    sub-int/2addr v7, v4

    aget-char v7, v0, v7

    if-eq v6, v7, :cond_35

    .line 2132
    const/4 v6, 0x1

    .line 2133
    .local v6, skip:I
    const/4 v7, 0x1

    aget-char v8, v0, p1

    shl-int/2addr v7, v8

    and-int/2addr v7, p2

    if-nez v7, :cond_49

    .line 2134
    add-int/2addr v2, v6

    .line 2136
    .end local v6           #skip:I
    .local v2, skip:I
    :goto_2f
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v2           #skip:I
    add-int/2addr p1, v2

    .line 2137
    goto :goto_12

    .line 2129
    .local v2, j:I
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2140
    :cond_38
    sub-int p0, p1, v4

    sub-int/2addr p0, v1

    .line 2148
    .end local v2           #j:I
    .end local p0           #haystackEnd:I
    :goto_3b
    return p0

    .line 2143
    .restart local p0       #haystackEnd:I
    :cond_3c
    const/4 v2, 0x1

    aget-char v6, v0, p1

    shl-int/2addr v2, v6

    and-int/2addr v2, p2

    if-nez v2, :cond_44

    .line 2144
    add-int/2addr p1, v4

    .line 2146
    :cond_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 2148
    :cond_47
    const/4 p0, -0x1

    goto :goto_3b

    .restart local v2       #j:I
    .restart local v6       #skip:I
    :cond_49
    move v2, v6

    .end local v6           #skip:I
    .local v2, skip:I
    goto :goto_2f
.end method

.method private indexOfSupplementary(II)I
    .registers 7
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1032
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1033
    const/4 v2, -0x1

    .line 1037
    :goto_7
    return v2

    .line 1035
    :cond_8
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1036
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1037
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_7
.end method

.method private lastIndexOfSupplementary(II)I
    .registers 7
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1215
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1216
    const/4 v2, -0x1

    .line 1220
    :goto_7
    return v2

    .line 1218
    :cond_8
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1219
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1220
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_7
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1707
    const/16 v1, 0x80

    if-ge p0, v1, :cond_10

    .line 1708
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ASCII:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .line 1712
    .local v0, s:Ljava/lang/String;
    :goto_d
    iput p0, v0, Ljava/lang/String;->hashCode:I

    .line 1713
    return-object v0

    .line 1710
    .end local v0           #s:Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_d
.end method

.method public static valueOf(D)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1724
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1735
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1746
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1757
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1770
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "null"

    goto :goto_6
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1783
    if-eqz p0, :cond_5

    const-string v0, "true"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "false"

    goto :goto_4
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 1673
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1695
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 955
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 956
    return-void
.end method

.method public charAt(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 587
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/lang/String;->count:I

    if-ge p1, v0, :cond_e

    .line 588
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0

    .line 590
    :cond_e
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public codePointAt(I)I
    .registers 6
    .parameter "index"

    .prologue
    .line 1978
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_b

    .line 1979
    :cond_6
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1981
    :cond_b
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 1992
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_c

    .line 1993
    :cond_7
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1995
    :cond_c
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2013
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_8

    if-le p1, p2, :cond_d

    .line 2014
    :cond_8
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 2016
    :cond_d
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/String;)I
    .registers 12
    .parameter "string"

    .prologue
    .line 638
    iget v1, p0, Ljava/lang/String;->offset:I

    .local v1, o1:I
    iget v3, p1, Ljava/lang/String;->offset:I

    .line 639
    .local v3, o2:I
    iget v7, p0, Ljava/lang/String;->offset:I

    iget v8, p0, Ljava/lang/String;->count:I

    iget v9, p1, Ljava/lang/String;->count:I

    if-ge v8, v9, :cond_26

    iget v8, p0, Ljava/lang/String;->count:I

    :goto_e
    add-int v0, v7, v8

    .line 640
    .local v0, end:I
    iget-object v6, p1, Ljava/lang/String;->value:[C

    .local v6, target:[C
    move v4, v3

    .end local v3           #o2:I
    .local v4, o2:I
    move v2, v1

    .line 641
    .end local v1           #o1:I
    .local v2, o1:I
    :goto_14
    if-ge v2, v0, :cond_29

    .line 642
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #o1:I
    .restart local v1       #o1:I
    aget-char v7, v7, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o2:I
    .restart local v3       #o2:I
    aget-char v8, v6, v4

    sub-int v5, v7, v8

    .local v5, result:I
    if-eqz v5, :cond_31

    move v7, v5

    .line 646
    .end local v5           #result:I
    :goto_25
    return v7

    .line 639
    .end local v0           #end:I
    .end local v6           #target:[C
    :cond_26
    iget v8, p1, Ljava/lang/String;->count:I

    goto :goto_e

    .line 646
    .end local v1           #o1:I
    .end local v3           #o2:I
    .restart local v0       #end:I
    .restart local v2       #o1:I
    .restart local v4       #o2:I
    .restart local v6       #target:[C
    :cond_29
    iget v7, p0, Ljava/lang/String;->count:I

    iget v8, p1, Ljava/lang/String;->count:I

    sub-int/2addr v7, v8

    move v3, v4

    .end local v4           #o2:I
    .restart local v3       #o2:I
    move v1, v2

    .end local v2           #o1:I
    .restart local v1       #o1:I
    goto :goto_25

    .restart local v5       #result:I
    :cond_31
    move v4, v3

    .end local v3           #o2:I
    .restart local v4       #o2:I
    move v2, v1

    .end local v1           #o1:I
    .restart local v2       #o1:I
    goto :goto_14
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .registers 14
    .parameter "string"

    .prologue
    .line 670
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 671
    .local v5, o2:I
    iget v9, p0, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v10, v11, :cond_25

    iget v10, p0, Ljava/lang/String;->count:I

    :goto_e
    add-int v2, v9, v10

    .line 673
    .local v2, end:I
    iget-object v8, p1, Ljava/lang/String;->value:[C

    .local v8, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 674
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_14
    if-ge v4, v2, :cond_36

    .line 675
    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v9, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v8, v6

    .local v1, c2:C
    if-ne v0, v1, :cond_28

    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 676
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_14

    .line 671
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #end:I
    .end local v4           #o1:I
    .end local v6           #o2:I
    .end local v8           #target:[C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_25
    iget v10, p1, Ljava/lang/String;->count:I

    goto :goto_e

    .line 678
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v8       #target:[C
    :cond_28
    invoke-direct {p0, v0}, Ljava/lang/String;->compareValue(C)C

    move-result v0

    .line 679
    invoke-direct {p0, v1}, Ljava/lang/String;->compareValue(C)C

    move-result v1

    .line 680
    sub-int v7, v0, v1

    .local v7, result:I
    if-eqz v7, :cond_3e

    move v9, v7

    .line 684
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v7           #result:I
    :goto_35
    return v9

    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_36
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int/2addr v9, v10

    move v5, v6

    .end local v6           #o2:I
    .restart local v5       #o2:I
    move v3, v4

    .end local v4           #o1:I
    .restart local v3       #o1:I
    goto :goto_35

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v7       #result:I
    :cond_3e
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_14
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 696
    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_2b

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_2b

    .line 697
    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 698
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-direct {v1, v5, v2, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 702
    .end local v0           #buffer:[C
    :goto_2a
    return-object v1

    :cond_2b
    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_31

    move-object v1, p1

    goto :goto_2a

    :cond_31
    move-object v1, p0

    goto :goto_2a
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "cs"

    .prologue
    .line 2030
    if-nez p1, :cond_8

    .line 2031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2033
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 1837
    if-nez p1, :cond_9

    .line 1838
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1841
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1843
    .local v0, len:I
    iget v1, p0, Ljava/lang/String;->count:I

    if-eq v0, v1, :cond_13

    move v1, v2

    .line 1851
    :goto_12
    return v1

    .line 1847
    :cond_13
    if-nez v0, :cond_1b

    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_1b

    .line 1848
    const/4 v1, 0x1

    goto :goto_12

    .line 1851
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_12
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .registers 7
    .parameter "strbuf"

    .prologue
    const/4 v2, 0x0

    .line 1800
    monitor-enter p1

    .line 1801
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1802
    .local v0, size:I
    iget v1, p0, Ljava/lang/String;->count:I

    if-eq v1, v0, :cond_d

    .line 1803
    monitor-exit p1

    move v1, v2

    .line 1805
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_c

    .line 1807
    .end local v0           #size:I
    :catchall_1f
    move-exception v1

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public contentEquals([CII)Z
    .registers 9
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 1816
    iget v1, p0, Ljava/lang/String;->count:I

    if-eq v1, p3, :cond_7

    move v1, v4

    .line 1824
    :goto_6
    return v1

    .line 1819
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p3, :cond_1c

    .line 1820
    add-int v1, p2, v0

    aget-char v1, p1, v1

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    if-eq v1, v2, :cond_19

    move v1, v4

    .line 1821
    goto :goto_6

    .line 1819
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1824
    :cond_1c
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 5
    .parameter "suffix"

    .prologue
    .line 754
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 770
    if-ne p1, p0, :cond_6

    move v9, v12

    .line 795
    :goto_5
    return v9

    .line 773
    :cond_6
    instance-of v9, p1, Ljava/lang/String;

    if-eqz v9, :cond_3e

    .line 774
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 776
    .local v6, s:Ljava/lang/String;
    iget v1, p0, Ljava/lang/String;->hashCode:I

    .line 777
    .local v1, hashCode1:I
    iget v2, v6, Ljava/lang/String;->hashCode:I

    .line 778
    .local v2, hashCode2:I
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, v6, Ljava/lang/String;->count:I

    if-ne v9, v10, :cond_1e

    if-eq v1, v2, :cond_20

    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    :cond_1e
    move v9, v11

    .line 780
    goto :goto_5

    .line 784
    :cond_20
    iget v4, p0, Ljava/lang/String;->offset:I

    .local v4, o1:I
    iget v5, v6, Ljava/lang/String;->offset:I

    .line 785
    .local v5, o2:I
    iget-object v7, p0, Ljava/lang/String;->value:[C

    .line 786
    .local v7, value1:[C
    iget-object v8, v6, Ljava/lang/String;->value:[C

    .line 787
    .local v8, value2:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_29
    iget v9, p0, Ljava/lang/String;->count:I

    if-ge v3, v9, :cond_3c

    .line 788
    add-int v9, v4, v3

    aget-char v9, v7, v9

    add-int v10, v5, v3

    aget-char v10, v8, v10

    if-eq v9, v10, :cond_39

    move v9, v11

    .line 789
    goto :goto_5

    .line 787
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3c
    move v9, v12

    .line 792
    goto :goto_5

    .end local v1           #hashCode1:I
    .end local v2           #hashCode2:I
    .end local v3           #i:I
    .end local v4           #o1:I
    .end local v5           #o2:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #value1:[C
    .end local v8           #value2:[C
    :cond_3e
    move v9, v11

    .line 795
    goto :goto_5
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 14
    .parameter "string"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 808
    if-ne p1, p0, :cond_6

    move v8, v11

    .line 827
    :goto_5
    return v8

    .line 811
    :cond_6
    if-eqz p1, :cond_e

    iget v8, p0, Ljava/lang/String;->count:I

    iget v9, p1, Ljava/lang/String;->count:I

    if-eq v8, v9, :cond_10

    :cond_e
    move v8, v10

    .line 812
    goto :goto_5

    .line 815
    :cond_10
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 816
    .local v5, o2:I
    iget v8, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    add-int v2, v8, v9

    .line 818
    .local v2, end:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .local v7, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 819
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1e
    if-ge v4, v2, :cond_42

    .line 820
    iget-object v8, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v8, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v7, v6

    .local v1, c2:C
    if-eq v0, v1, :cond_44

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    if-eq v8, v9, :cond_44

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-eq v8, v9, :cond_44

    move v8, v10

    .line 824
    goto :goto_5

    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_42
    move v8, v11

    .line 827
    goto :goto_5

    .end local v4           #o1:I
    .end local v6           #o2:I
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_44
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1e
.end method

.method public getBytes(II[BI)V
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "data"
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    if-ltz p1, :cond_20

    if-gt p1, p2, :cond_20

    iget v2, p0, Ljava/lang/String;->count:I

    if-gt p2, v2, :cond_20

    .line 852
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v2

    .line 854
    :try_start_b
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v0, v2, p1

    .local v0, i:I
    move v1, p4

    .end local p4
    .local v1, index:I
    :goto_10
    if-ge v0, p2, :cond_1f

    .line 855
    add-int/lit8 p4, v1, 0x1

    .end local v1           #index:I
    .restart local p4
    iget-object v2, p0, Ljava/lang/String;->value:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, p3, v1
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_1b} :catch_64

    .line 854
    add-int/lit8 v0, v0, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #index:I
    goto :goto_10

    :cond_1f
    move p4, v1

    .line 860
    .end local v0           #i:I
    .end local v1           #index:I
    .restart local p4
    :cond_20
    :goto_20
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 857
    :catch_64
    move-exception v2

    goto :goto_20
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 873
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .registers 9
    .parameter "charset"

    .prologue
    .line 900
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, canonicalCharsetName:Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 902
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toUtf8Bytes([CII)[B

    move-result-object v4

    .line 914
    :goto_16
    return-object v4

    .line 903
    :cond_17
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 904
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toIsoLatin1Bytes([CII)[B

    move-result-object v4

    goto :goto_16

    .line 905
    :cond_2a
    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 906
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toAsciiBytes([CII)[B

    move-result-object v4

    goto :goto_16

    .line 907
    :cond_3d
    const-string v4, "UTF-16BE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 908
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toBigEndianUtf16Bytes([CII)[B

    move-result-object v4

    goto :goto_16

    .line 910
    :cond_50
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 911
    .local v3, chars:Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 912
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    .line 913
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v4, v1

    .line 914
    goto :goto_16
.end method

.method public getChars(II[CI)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 939
    if-ltz p1, :cond_13

    if-gt p1, p2, :cond_13

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_13

    .line 940
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 946
    return-void

    .line 943
    :cond_13
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " buffer.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 959
    iget v2, p0, Ljava/lang/String;->hashCode:I

    .line 960
    .local v2, hash:I
    if-nez v2, :cond_21

    .line 961
    iget v4, p0, Ljava/lang/String;->count:I

    if-nez v4, :cond_a

    .line 962
    const/4 v4, 0x0

    .line 971
    :goto_9
    return v4

    .line 964
    :cond_a
    iget v4, p0, Ljava/lang/String;->count:I

    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v4, v5

    .line 965
    .local v1, end:I
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 966
    .local v0, chars:[C
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, i:I
    :goto_14
    if-ge v3, v1, :cond_1f

    .line 967
    mul-int/lit8 v4, v2, 0x1f

    aget-char v5, v0, v3

    add-int v2, v4, v5

    .line 966
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 969
    :cond_1f
    iput v2, p0, Ljava/lang/String;->hashCode:I

    .end local v0           #chars:[C
    .end local v1           #end:I
    .end local v3           #i:I
    :cond_21
    move v4, v2

    .line 971
    goto :goto_9
.end method

.method public indexOf(I)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 986
    const v0, 0xffff

    if-le p1, v0, :cond_b

    .line 987
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 989
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_a
.end method

.method public indexOf(II)I
    .registers 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1005
    const v0, 0xffff

    if-le p1, v0, :cond_a

    .line 1006
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 1008
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_9
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 16
    .parameter "string"

    .prologue
    const/4 v13, -0x1

    .line 1054
    const/4 v7, 0x0

    .line 1055
    .local v7, start:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 1056
    .local v8, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1057
    .local v0, _count:I
    if-lez v8, :cond_3a

    .line 1058
    if-le v8, v0, :cond_c

    move v11, v13

    .line 1081
    :goto_b
    return v11

    .line 1061
    :cond_c
    iget-object v10, p1, Ljava/lang/String;->value:[C

    .line 1062
    .local v10, target:[C
    iget v9, p1, Ljava/lang/String;->offset:I

    .line 1063
    .local v9, subOffset:I
    aget-char v3, v10, v9

    .line 1064
    .local v3, firstChar:C
    add-int v2, v9, v8

    .line 1066
    .local v2, end:I
    :goto_14
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1067
    .local v4, i:I
    if-eq v4, v13, :cond_1e

    add-int v11, v8, v4

    if-le v11, v0, :cond_20

    :cond_1e
    move v11, v13

    .line 1068
    goto :goto_b

    .line 1070
    :cond_20
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    .local v5, o1:I
    move v6, v9

    .line 1071
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1072
    .local v1, _value:[C
    :cond_27
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_33

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v10, v6

    if-eq v11, v12, :cond_27

    .line 1075
    :cond_33
    if-ne v6, v2, :cond_37

    move v11, v4

    .line 1076
    goto :goto_b

    .line 1078
    :cond_37
    add-int/lit8 v7, v4, 0x1

    .line 1079
    goto :goto_14

    .line 1081
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v9           #subOffset:I
    .end local v10           #target:[C
    :cond_3a
    if-ge v7, v0, :cond_3e

    move v11, v7

    goto :goto_b

    :cond_3e
    move v11, v0

    goto :goto_b
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 16
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v12, -0x1

    .line 1101
    if-gez p2, :cond_4

    .line 1102
    const/4 p2, 0x0

    .line 1104
    :cond_4
    iget v7, p1, Ljava/lang/String;->count:I

    .line 1105
    .local v7, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1106
    .local v0, _count:I
    if-lez v7, :cond_3e

    .line 1107
    add-int v10, v7, p2

    if-le v10, v0, :cond_10

    move v10, v12

    .line 1130
    :goto_f
    return v10

    .line 1110
    :cond_10
    iget-object v9, p1, Ljava/lang/String;->value:[C

    .line 1111
    .local v9, target:[C
    iget v8, p1, Ljava/lang/String;->offset:I

    .line 1112
    .local v8, subOffset:I
    aget-char v3, v9, v8

    .line 1113
    .local v3, firstChar:C
    add-int v2, v8, v7

    .line 1115
    .local v2, end:I
    :goto_18
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1116
    .local v4, i:I
    if-eq v4, v12, :cond_22

    add-int v10, v7, v4

    if-le v10, v0, :cond_24

    :cond_22
    move v10, v12

    .line 1117
    goto :goto_f

    .line 1119
    :cond_24
    iget v10, p0, Ljava/lang/String;->offset:I

    add-int v5, v10, v4

    .local v5, o1:I
    move v6, v8

    .line 1120
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1121
    .local v1, _value:[C
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_37

    add-int/lit8 v5, v5, 0x1

    aget-char v10, v1, v5

    aget-char v11, v9, v6

    if-eq v10, v11, :cond_2b

    .line 1124
    :cond_37
    if-ne v6, v2, :cond_3b

    move v10, v4

    .line 1125
    goto :goto_f

    .line 1127
    :cond_3b
    add-int/lit8 p2, v4, 0x1

    .line 1128
    goto :goto_18

    .line 1130
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v8           #subOffset:I
    .end local v9           #target:[C
    :cond_3e
    if-ge p2, v0, :cond_42

    move v10, p2

    goto :goto_f

    :cond_42
    move v10, v0

    goto :goto_f
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1150
    iget v0, p0, Ljava/lang/String;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lastIndexOf(I)I
    .registers 8
    .parameter "c"

    .prologue
    .line 1164
    const v4, 0xffff

    if-le p1, v4, :cond_d

    .line 1165
    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1176
    :goto_c
    return v4

    .line 1168
    :cond_d
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1169
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1170
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1171
    .local v2, _value:[C
    add-int v4, v1, v0

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .local v3, i:I
    :goto_18
    if-lt v3, v1, :cond_24

    .line 1172
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_21

    .line 1173
    sub-int v4, v3, v1

    goto :goto_c

    .line 1171
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1176
    :cond_24
    const/4 v4, -0x1

    goto :goto_c
.end method

.method public lastIndexOf(II)I
    .registers 8
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1193
    const v4, 0xffff

    if-le p1, v4, :cond_a

    .line 1194
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1210
    :goto_9
    return v4

    .line 1197
    :cond_a
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1198
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1199
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1200
    .local v2, _value:[C
    if-ltz p2, :cond_25

    .line 1201
    if-lt p2, v0, :cond_17

    .line 1202
    const/4 v4, 0x1

    sub-int p2, v0, v4

    .line 1204
    :cond_17
    add-int v3, v1, p2

    .local v3, i:I
    :goto_19
    if-lt v3, v1, :cond_25

    .line 1205
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_22

    .line 1206
    sub-int v4, v3, v1

    goto :goto_9

    .line 1204
    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1210
    .end local v3           #i:I
    :cond_25
    const/4 v4, -0x1

    goto :goto_9
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 1237
    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 14
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v10, -0x1

    .line 1255
    iget v5, p1, Ljava/lang/String;->count:I

    .line 1256
    .local v5, subCount:I
    iget v8, p0, Ljava/lang/String;->count:I

    if-gt v5, v8, :cond_48

    if-ltz p2, :cond_48

    .line 1257
    if-lez v5, :cond_3f

    .line 1258
    iget v8, p0, Ljava/lang/String;->count:I

    sub-int/2addr v8, v5

    if-le p2, v8, :cond_14

    .line 1259
    iget v8, p0, Ljava/lang/String;->count:I

    sub-int p2, v8, v5

    .line 1262
    :cond_14
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1263
    .local v7, target:[C
    iget v6, p1, Ljava/lang/String;->offset:I

    .line 1264
    .local v6, subOffset:I
    aget-char v1, v7, v6

    .line 1265
    .local v1, firstChar:C
    add-int v0, v6, v5

    .line 1267
    .local v0, end:I
    :goto_1c
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 1268
    .local v2, i:I
    if-ne v2, v10, :cond_24

    move v8, v10

    .line 1283
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :goto_23
    return v8

    .line 1271
    .restart local v0       #end:I
    .restart local v1       #firstChar:C
    .restart local v2       #i:I
    .restart local v6       #subOffset:I
    .restart local v7       #target:[C
    :cond_24
    iget v8, p0, Ljava/lang/String;->offset:I

    add-int v3, v8, v2

    .local v3, o1:I
    move v4, v6

    .line 1272
    .local v4, o2:I
    :cond_29
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_37

    iget-object v8, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v8, v8, v3

    aget-char v9, v7, v4

    if-eq v8, v9, :cond_29

    .line 1275
    :cond_37
    if-ne v4, v0, :cond_3b

    move v8, v2

    .line 1276
    goto :goto_23

    .line 1278
    :cond_3b
    const/4 v8, 0x1

    sub-int p2, v2, v8

    .line 1279
    goto :goto_1c

    .line 1281
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_3f
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_45

    move v8, p2

    goto :goto_23

    :cond_45
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_23

    :cond_48
    move v8, v10

    .line 1283
    goto :goto_23
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1292
    iget v0, p0, Ljava/lang/String;->count:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3
    .parameter "regularExpression"

    .prologue
    .line 1871
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 8
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2052
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    .line 2053
    .local v1, s:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    .line 2054
    .local v0, r:I
    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .registers 14
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1314
    if-nez p2, :cond_a

    .line 1315
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1317
    :cond_a
    if-ltz p3, :cond_11

    iget v5, p2, Ljava/lang/String;->count:I

    sub-int/2addr v5, p3

    if-ge v5, p4, :cond_13

    :cond_11
    move v5, v7

    .line 1336
    :goto_12
    return v5

    .line 1320
    :cond_13
    if-ltz p1, :cond_1a

    iget v5, p0, Ljava/lang/String;->count:I

    sub-int/2addr v5, p1

    if-ge v5, p4, :cond_1c

    :cond_1a
    move v5, v7

    .line 1321
    goto :goto_12

    .line 1323
    :cond_1c
    if-gtz p4, :cond_20

    move v5, v8

    .line 1324
    goto :goto_12

    .line 1326
    :cond_20
    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v5, p1

    .local v1, o1:I
    iget v5, p2, Ljava/lang/String;->offset:I

    add-int v2, v5, p3

    .line 1328
    .local v2, o2:I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    .line 1329
    .local v3, value1:[C
    iget-object v4, p2, Ljava/lang/String;->value:[C

    .line 1330
    .local v4, value2:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, p4, :cond_3e

    .line 1331
    add-int v5, v1, v0

    aget-char v5, v3, v5

    add-int v6, v2, v0

    aget-char v6, v4, v6

    if-eq v5, v6, :cond_3b

    move v5, v7

    .line 1332
    goto :goto_12

    .line 1330
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3e
    move v5, v8

    .line 1336
    goto :goto_12
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .registers 15
    .parameter "ignoreCase"
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v8, 0x0

    .line 1361
    if-nez p1, :cond_8

    .line 1362
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    .line 1386
    :goto_7
    return v6

    .line 1365
    :cond_8
    if-eqz p3, :cond_50

    .line 1366
    if-ltz p2, :cond_11

    iget v6, p0, Ljava/lang/String;->count:I

    sub-int/2addr v6, p2

    if-le p5, v6, :cond_13

    :cond_11
    move v6, v8

    .line 1367
    goto :goto_7

    .line 1369
    :cond_13
    if-ltz p4, :cond_1a

    iget v6, p3, Ljava/lang/String;->count:I

    sub-int/2addr v6, p4

    if-le p5, v6, :cond_1c

    :cond_1a
    move v6, v8

    .line 1370
    goto :goto_7

    .line 1373
    :cond_1c
    iget v6, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v6

    .line 1374
    iget v6, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v6

    .line 1375
    add-int v2, p2, p5

    .line 1377
    .local v2, end:I
    iget-object v4, p3, Ljava/lang/String;->value:[C

    .local v4, target:[C
    move v3, p4

    .end local p4
    .local v3, start:I
    move v5, p2

    .line 1378
    .end local p2
    .local v5, thisStart:I
    :goto_28
    if-ge v5, v2, :cond_4c

    .line 1379
    iget-object v6, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    .end local v5           #thisStart:I
    .restart local p2
    aget-char v0, v6, v5

    .local v0, c1:C
    add-int/lit8 p4, v3, 0x1

    .end local v3           #start:I
    .restart local p4
    aget-char v1, v4, v3

    .local v1, c2:C
    if-eq v0, v1, :cond_56

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_56

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_56

    move v6, v8

    .line 1383
    goto :goto_7

    .line 1386
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local p2
    .end local p4
    .restart local v3       #start:I
    .restart local v5       #thisStart:I
    :cond_4c
    const/4 v6, 0x1

    move p4, v3

    .end local v3           #start:I
    .restart local p4
    move p2, v5

    .end local v5           #thisStart:I
    .restart local p2
    goto :goto_7

    .line 1388
    .end local v2           #end:I
    .end local v4           #target:[C
    :cond_50
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v4       #target:[C
    :cond_56
    move v3, p4

    .end local p4
    .restart local v3       #start:I
    move v5, p2

    .end local p2
    .restart local v5       #thisStart:I
    goto :goto_28
.end method

.method public replace(CC)Ljava/lang/String;
    .registers 13
    .parameter "oldChar"
    .parameter "newChar"

    .prologue
    const/4 v9, 0x0

    .line 1402
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1403
    .local v2, buffer:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1404
    .local v1, _offset:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1406
    .local v0, _count:I
    move v4, v1

    .line 1407
    .local v4, idx:I
    add-int v5, v1, v0

    .line 1408
    .local v5, last:I
    const/4 v3, 0x0

    .line 1409
    .local v3, copied:Z
    :goto_b
    if-ge v4, v5, :cond_21

    .line 1410
    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1e

    .line 1411
    if-nez v3, :cond_1c

    .line 1412
    new-array v6, v0, [C

    .line 1413
    .local v6, newBuffer:[C
    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1414
    move-object v2, v6

    .line 1415
    sub-int/2addr v4, v1

    .line 1416
    sub-int/2addr v5, v1

    .line 1417
    const/4 v3, 0x1

    .line 1419
    .end local v6           #newBuffer:[C
    :cond_1c
    aput-char p2, v2, v4

    .line 1421
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1424
    :cond_21
    if-eqz v3, :cond_2b

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    :goto_2a
    return-object v7

    :cond_2b
    move-object v7, p0

    goto :goto_2a
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 15
    .parameter "target"
    .parameter "replacement"

    .prologue
    const/4 v11, -0x1

    .line 1441
    if-nez p1, :cond_b

    .line 1442
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "target == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1444
    :cond_b
    if-nez p2, :cond_15

    .line 1445
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "replacement == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1448
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1449
    .local v7, targetString:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1450
    .local v1, matchStart:I
    if-ne v1, v11, :cond_22

    move-object v8, p0

    .line 1482
    :goto_21
    return-object v8

    .line 1455
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, replacementString:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 1459
    .local v6, targetLength:I
    if-nez v6, :cond_56

    .line 1460
    iget v8, p0, Ljava/lang/String;->count:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    mul-int v4, v8, v9

    .line 1461
    .local v4, resultLength:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1462
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    iget v0, p0, Ljava/lang/String;->offset:I

    .local v0, i:I
    :goto_40
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge v0, v8, :cond_51

    .line 1464
    iget-object v8, p0, Ljava/lang/String;->value:[C

    aget-char v8, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1467
    :cond_51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_21

    .line 1470
    .end local v0           #i:I
    .end local v3           #result:Ljava/lang/StringBuilder;
    .end local v4           #resultLength:I
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1471
    .restart local v3       #result:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1474
    .local v5, searchStart:I
    :cond_5e
    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    sub-int v10, v1, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1476
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    add-int v5, v1, v6

    .line 1479
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_5e

    .line 1481
    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    iget v10, p0, Ljava/lang/String;->count:I

    sub-int/2addr v10, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_21
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1890
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1909
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "regularExpression"

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .parameter "regularExpression"
    .parameter "limit"

    .prologue
    .line 1947
    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1948
    .local v0, result:[Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    :goto_7
    return-object v1

    :cond_8
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 3
    .parameter "prefix"

    .prologue
    .line 1497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .registers 5
    .parameter "prefix"
    .parameter "start"

    .prologue
    .line 1514
    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1967
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 6
    .parameter "start"

    .prologue
    .line 1529
    if-nez p1, :cond_4

    move-object v0, p0

    .line 1533
    :goto_3
    return-object v0

    .line 1532
    :cond_4
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_18

    .line 1533
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_3

    .line 1535
    :cond_18
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1553
    if-nez p1, :cond_8

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_8

    move-object v0, p0

    .line 1559
    :goto_7
    return-object v0

    .line 1558
    :cond_8
    if-ltz p1, :cond_1d

    if-gt p1, p2, :cond_1d

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1d

    .line 1559
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_7

    .line 1561
    :cond_1d
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toCharArray()[C
    .registers 6

    .prologue
    .line 1570
    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    .line 1571
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1572
    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1582
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 1599
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1609
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1619
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "locale"

    .prologue
    .line 1636
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x20

    .line 1647
    iget v2, p0, Ljava/lang/String;->offset:I

    .local v2, start:I
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 1648
    .local v1, last:I
    move v0, v1

    .line 1649
    .local v0, end:I
    :goto_d
    if-gt v2, v0, :cond_18

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_18

    .line 1650
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1652
    :cond_18
    :goto_18
    if-lt v0, v2, :cond_23

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_23

    .line 1653
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1655
    :cond_23
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2b

    if-ne v0, v1, :cond_2b

    move-object v3, p0

    .line 1658
    :goto_2a
    return-object v3

    :cond_2b
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_2a
.end method
