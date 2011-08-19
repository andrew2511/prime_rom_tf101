.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 55
    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 730
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    .line 733
    const/16 v0, -0x80

    .local v0, i:I
    :goto_10
    const/16 v1, 0x80

    if-ge v0, v1, :cond_23

    .line 734
    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 736
    :cond_23
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 89
    return-void
.end method

.method public static bitCount(J)I
    .registers 10
    .parameter "v"

    .prologue
    const-wide v6, 0x3333333333333333L

    const v5, 0xf0f0f0f

    .line 599
    const/4 v1, 0x1

    ushr-long v1, p0, v1

    const-wide v3, 0x5555555555555555L

    and-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 600
    and-long v1, p0, v6

    const/4 v3, 0x2

    ushr-long v3, p0, v3

    and-long/2addr v3, v6

    add-long p0, v1, v3

    .line 601
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    long-to-int v2, p0

    add-int v0, v1, v2

    .line 602
    .local v0, i:I
    and-int v1, v0, v5

    ushr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v5

    add-int v0, v1, v2

    .line 603
    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    .line 604
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 605
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .line 133
    .local v2, i:I
    if-nez v3, :cond_d

    .line 134
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 136
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 137
    .local v1, firstDigit:C
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_1f

    move v4, v8

    .line 138
    .local v4, negative:Z
    :goto_16
    if-eqz v4, :cond_28

    .line 139
    if-ne v3, v8, :cond_22

    .line 140
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 137
    .end local v4           #negative:Z
    :cond_1f
    const/4 v7, 0x0

    move v4, v7

    goto :goto_16

    .line 142
    .restart local v4       #negative:Z
    :cond_22
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 145
    :cond_28
    const/16 v0, 0xa

    .line 146
    .local v0, base:I
    const/16 v7, 0x30

    if-ne v1, v7, :cond_5c

    .line 147
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_39

    .line 148
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 168
    :goto_38
    return-object v7

    .line 150
    :cond_39
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x78

    if-eq v1, v7, :cond_45

    const/16 v7, 0x58

    if-ne v1, v7, :cond_59

    .line 151
    :cond_45
    if-ne v2, v3, :cond_4c

    .line 152
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 154
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    .line 155
    const/16 v0, 0x10

    .line 167
    :cond_50
    :goto_50
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v5

    .line 168
    .local v5, result:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_38

    .line 157
    .end local v5           #result:J
    :cond_59
    const/16 v0, 0x8

    goto :goto_50

    .line 159
    :cond_5c
    const/16 v7, 0x23

    if-ne v1, v7, :cond_50

    .line 160
    if-ne v2, v3, :cond_67

    .line 161
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 163
    :cond_67
    add-int/lit8 v2, v2, 0x1

    .line 164
    const/16 v0, 0x10

    goto :goto_50
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 207
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move-object v2, v3

    .line 217
    :goto_a
    return-object v2

    .line 210
    :cond_b
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_13

    move-object v2, v3

    .line 212
    goto :goto_a

    .line 215
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_a

    .line 216
    :catch_18
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, v3

    .line 217
    goto :goto_a
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 236
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 237
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 246
    :goto_c
    return-object v2

    .line 239
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_18

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c

    .line 244
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 245
    :catch_1d
    move-exception v0

    .line 246
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 265
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move-object v2, p1

    .line 275
    :goto_9
    return-object v2

    .line 268
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_12

    move-object v2, p1

    .line 270
    goto :goto_9

    .line 273
    :cond_12
    :try_start_12
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_9

    .line 274
    :catch_17
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, p1

    .line 275
    goto :goto_9
.end method

.method public static highestOneBit(J)J
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 504
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 505
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 506
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 507
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 508
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 509
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 510
    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .parameter "s"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowestOneBit(J)J
    .registers 4
    .parameter "v"

    .prologue
    .line 525
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .registers 7
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    .line 539
    cmp-long v2, p0, v3

    if-gez v2, :cond_8

    .line 540
    const/4 v2, 0x0

    .line 570
    :goto_7
    return v2

    .line 542
    :cond_8
    cmp-long v2, p0, v3

    if-nez v2, :cond_f

    .line 543
    const/16 v2, 0x40

    goto :goto_7

    .line 548
    :cond_f
    const/4 v1, 0x1

    .line 549
    .local v1, n:I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v0, v2

    .line 550
    .local v0, i:I
    if-nez v0, :cond_1a

    .line 551
    add-int/lit8 v1, v1, 0x20

    .line 552
    long-to-int v0, p0

    .line 554
    :cond_1a
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_22

    .line 555
    add-int/lit8 v1, v1, 0x10

    .line 556
    shl-int/lit8 v0, v0, 0x10

    .line 558
    :cond_22
    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_2a

    .line 559
    add-int/lit8 v1, v1, 0x8

    .line 560
    shl-int/lit8 v0, v0, 0x8

    .line 562
    :cond_2a
    ushr-int/lit8 v2, v0, 0x1c

    if-nez v2, :cond_32

    .line 563
    add-int/lit8 v1, v1, 0x4

    .line 564
    shl-int/lit8 v0, v0, 0x4

    .line 566
    :cond_32
    ushr-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_3a

    .line 567
    add-int/lit8 v1, v1, 0x2

    .line 568
    shl-int/lit8 v0, v0, 0x2

    .line 570
    :cond_3a
    ushr-int/lit8 v2, v0, 0x1f

    sub-int v2, v1, v2

    goto :goto_7
.end method

.method public static numberOfTrailingZeros(J)I
    .registers 5
    .parameter "v"

    .prologue
    .line 583
    long-to-int v0, p0

    .line 584
    .local v0, low:I
    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    :goto_7
    return v1

    :cond_8
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    goto :goto_7
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .registers 15
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"

    .prologue
    .line 348
    const-wide/high16 v0, -0x8000

    int-to-long v2, p2

    div-long v3, v0, v2

    .line 349
    .local v3, max:J
    const-wide/16 v5, 0x0

    .local v5, result:J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v1, v0

    .local v1, length:J
    move-wide v7, v5

    .end local v5           #result:J
    .local v7, result:J
    move v0, p1

    .line 350
    .end local p1
    .local v0, offset:I
    :goto_e
    int-to-long v5, v0

    cmp-long p1, v5, v1

    if-gez p1, :cond_3f

    .line 351
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 352
    .local v0, digit:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_25

    .line 353
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 355
    .restart local p0
    :cond_25
    cmp-long v5, v3, v7

    if-lez v5, :cond_2e

    .line 356
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 358
    .restart local p0
    :cond_2e
    int-to-long v5, p2

    mul-long/2addr v5, v7

    int-to-long v9, v0

    sub-long/2addr v5, v9

    .line 359
    .local v5, next:J
    cmp-long v0, v5, v7

    if-lez v0, :cond_3b

    .line 360
    .end local v0           #digit:I
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .line 362
    .restart local p0
    :cond_3b
    move-wide v5, v5

    .end local v7           #result:J
    .local v5, result:J
    move-wide v7, v5

    .end local v5           #result:J
    .restart local v7       #result:J
    move v0, p1

    .line 363
    .end local p1
    .local v0, offset:I
    goto :goto_e

    .line 364
    :cond_3f
    if-nez p3, :cond_4f

    .line 365
    neg-long p1, v7

    .line 366
    .end local v7           #result:J
    .end local p2
    .local p1, result:J
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_4d

    .line 367
    .end local v0           #offset:I
    .end local p3
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    .end local p0
    throw p0

    .restart local p0
    :cond_4d
    move-wide p0, p1

    .line 370
    .end local p1           #result:J
    .local p0, result:J
    :goto_4e
    return-wide p0

    .restart local v0       #offset:I
    .restart local v7       #result:J
    .local p0, string:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_4f
    move-wide p0, v7

    .end local v7           #result:J
    .local p0, result:J
    goto :goto_4e
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 310
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .registers 8
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v3, 0x2

    if-lt p1, v3, :cond_7

    const/16 v3, 0x24

    if-le p1, v3, :cond_20

    .line 330
    :cond_7
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid radix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_20
    if-nez p0, :cond_27

    .line 333
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 335
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 336
    .local v0, i:I
    if-nez v1, :cond_33

    .line 337
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 339
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_48

    const/4 v3, 0x1

    move v2, v3

    .line 340
    .local v2, negative:Z
    :goto_3d
    if-eqz v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4b

    .line 341
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 339
    .end local v2           #negative:Z
    :cond_48
    const/4 v3, 0x0

    move v2, v3

    goto :goto_3d

    .line 344
    .restart local v2       #negative:Z
    :cond_4b
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static reverse(J)J
    .registers 11
    .parameter "v"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 684
    ushr-long v0, p0, v4

    const-wide v2, 0x5555555555555555L

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 685
    ushr-long v0, p0, v5

    const-wide v2, 0x3333333333333333L

    and-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 686
    ushr-long v0, p0, v6

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    .line 687
    ushr-long v0, p0, v7

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    .line 688
    ushr-long v0, p0, v8

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    or-long p0, v0, v2

    .line 689
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .registers 11
    .parameter "v"

    .prologue
    const-wide v2, 0xff00ff00ff00ffL

    const-wide v7, 0xffff0000ffffL

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 668
    ushr-long v0, p0, v4

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 669
    ushr-long v0, p0, v5

    and-long/2addr v0, v7

    and-long v2, p0, v7

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 670
    ushr-long v0, p0, v6

    shl-long v2, p0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .registers 7
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 638
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .registers 7
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 654
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .registers 5
    .parameter "v"

    .prologue
    const-wide/16 v1, 0x0

    .line 704
    cmp-long v0, p0, v1

    if-gez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    cmp-long v0, p0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 387
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 400
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 412
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3
    .parameter "n"

    .prologue
    .line 430
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 4
    .parameter "v"
    .parameter "radix"

    .prologue
    .line 453
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 4
    .parameter "v"

    .prologue
    .line 723
    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .registers 7
    .parameter "object"

    .prologue
    .line 110
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    .line 111
    .local v2, thisValue:J
    iget-wide v0, p1, Ljava/lang/Long;->value:J

    .line 112
    .local v0, thatValue:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_a

    const/4 v4, -0x1

    :goto_9
    return v4

    :cond_a
    cmp-long v4, v2, v0

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    const/4 v4, 0x1

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 173
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 188
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Long;

    .end local p1
    iget-wide v0, p1, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 193
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 281
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 286
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 375
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 417
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
