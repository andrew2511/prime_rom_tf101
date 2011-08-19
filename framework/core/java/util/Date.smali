.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static creationYear:I = 0x0

.field private static final dayOfWeekNames:[Ljava/lang/String; = null

.field private static final monthNames:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x686a81014b597419L


# instance fields
.field private transient milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sput v0, Ljava/util/Date;->creationYear:I

    .line 714
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sun"

    aput-object v1, v0, v3

    const-string v1, "Mon"

    aput-object v1, v0, v4

    const-string v1, "Tue"

    aput-object v1, v0, v5

    const-string v1, "Wed"

    aput-object v1, v0, v6

    const-string v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Date;->dayOfWeekNames:[Ljava/lang/String;

    .line 716
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Date;->monthNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 51
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 70
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 71
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 72
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 95
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 96
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 97
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 14
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 122
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 123
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 124
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->milliseconds:J

    .line 149
    return-void
.end method

.method public static UTC(IIIIII)J
    .registers 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 753
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 754
    add-int/lit16 v1, p0, 0x76c

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 755
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "string"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 350
    const/4 v7, 0x0

    .local v7, i:I
    array-length v6, p1

    .local v6, alength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, slength:I
    :goto_7
    if-ge v7, v6, :cond_19

    .line 351
    const/4 v1, 0x1

    aget-object v3, p1, v7

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v7

    .line 355
    :goto_15
    return v0

    .line 350
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 355
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 25
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    if-nez p0, :cond_d

    .line 372
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v3, "The string argument is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    .restart local p0
    :cond_d
    const/4 v13, 0x0

    .line 376
    .local v13, sign:C
    const/4 v9, 0x0

    .line 377
    .local v9, commentLevel:I
    const/4 v12, 0x0

    .local v12, offset:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, length:I
    const/4 v14, 0x0

    .line 378
    .local v14, state:I
    const/4 v15, -0x1

    .local v15, year:I
    const/4 v4, -0x1

    .local v4, month:I
    const/4 v5, -0x1

    .line 379
    .local v5, date:I
    const/4 v6, -0x1

    .local v6, hour:I
    const/4 v7, -0x1

    .local v7, minute:I
    const/4 v8, -0x1

    .local v8, second:I
    const/16 v17, 0x0

    .local v17, zoneOffset:I
    const/4 v10, 0x0

    .line 380
    .local v10, minutesOffset:I
    const/16 v16, 0x0

    .line 381
    .local v16, zone:Z
    const/4 v3, 0x0

    .local v3, PAD:I
    const/4 v3, 0x1

    .local v3, LETTERS:I
    const/4 v3, 0x2

    .line 382
    .local v3, NUMBERS:I
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #NUMBERS:I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, buffer:Ljava/lang/StringBuilder;
    move/from16 v20, v16

    .end local v16           #zone:Z
    .local v20, zone:Z
    move/from16 v21, v17

    .end local v17           #zoneOffset:I
    .local v21, zoneOffset:I
    move/from16 v19, v15

    .end local v15           #year:I
    .local v19, year:I
    move/from16 v17, v14

    .end local v14           #state:I
    .local v17, state:I
    move/from16 v16, v13

    .end local v13           #sign:C
    .local v16, sign:C
    move v13, v12

    .end local v12           #offset:I
    .local v13, offset:I
    move v12, v10

    .line 384
    .end local v10           #minutesOffset:I
    .local v12, minutesOffset:I
    :goto_34
    if-gt v13, v11, :cond_3be

    .line 385
    if-ge v13, v11, :cond_100

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 386
    .local v10, next:C
    :goto_3f
    add-int/lit8 v15, v13, 0x1

    .line 388
    .end local v13           #offset:I
    .local v15, offset:I
    const/16 v13, 0x28

    if-ne v10, v13, :cond_47

    .line 389
    add-int/lit8 v9, v9, 0x1

    .line 391
    :cond_47
    if-lez v9, :cond_45e

    .line 392
    const/16 v13, 0x29

    if-ne v10, v13, :cond_4f

    .line 393
    add-int/lit8 v9, v9, -0x1

    .line 395
    :cond_4f
    if-nez v9, :cond_45b

    .line 396
    const/16 v10, 0x20

    move v13, v10

    .line 402
    .end local v10           #next:C
    .local v13, next:I
    :goto_54
    const/4 v10, 0x0

    .line 403
    .local v10, nextState:I
    const/16 v14, 0x61

    if-gt v14, v13, :cond_5d

    const/16 v14, 0x7a

    if-le v13, v14, :cond_65

    :cond_5d
    const/16 v14, 0x41

    if-gt v14, v13, :cond_104

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_104

    .line 404
    :cond_65
    const/4 v10, 0x1

    move v14, v10

    .line 411
    .end local v10           #nextState:I
    .local v14, nextState:I
    :goto_67
    const/4 v10, 0x2

    move/from16 v0, v17

    move v1, v10

    if-ne v0, v1, :cond_29d

    const/4 v10, 0x2

    if-eq v14, v10, :cond_29d

    .line 412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 413
    .local v10, digit:I
    const/16 v17, 0x0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 414
    .end local v17           #state:I
    const/16 v17, 0x2b

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_90

    const/16 v17, 0x2d

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_142

    .line 415
    :cond_90
    if-nez v21, :cond_13c

    .line 416
    const/16 v17, 0x1

    .line 417
    .end local v20           #zone:Z
    .local v17, zone:Z
    const/16 v18, 0x3a

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_b3

    .line 418
    const/16 v12, 0x2d

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_129

    .end local v12           #minutesOffset:I
    add-int/lit8 v12, v15, 0x2

    move-object/from16 v0, p0

    move v1, v15

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    .line 423
    .restart local v12       #minutesOffset:I
    :goto_b1
    add-int/lit8 v15, v15, 0x2

    .line 425
    :cond_b3
    const/16 v18, 0x2d

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_139

    neg-int v10, v10

    move/from16 v16, v10

    .line 426
    .end local v10           #digit:I
    .end local v21           #zoneOffset:I
    .local v16, zoneOffset:I
    :goto_be
    const/4 v10, 0x0

    .local v10, sign:C
    move/from16 v18, v16

    .end local v16           #zoneOffset:I
    .local v18, zoneOffset:I
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    move/from16 v23, v12

    .end local v12           #minutesOffset:I
    .local v23, minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move v15, v10

    .end local v10           #sign:C
    .local v15, sign:C
    move/from16 v10, v23

    .line 510
    .end local v23           #minutesOffset:I
    .local v10, minutesOffset:I
    :goto_c9
    const/16 v19, 0x2b

    move v0, v13

    move/from16 v1, v19

    if-eq v0, v1, :cond_df

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_3a7

    const/16 v19, 0x2d

    move v0, v13

    move/from16 v1, v19

    if-ne v0, v1, :cond_3a7

    .line 511
    :cond_df
    move v15, v13

    .line 517
    :cond_e0
    :goto_e0
    const/16 v19, 0x1

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_ee

    const/16 v19, 0x2

    move v0, v14

    move/from16 v1, v19

    if-ne v0, v1, :cond_f1

    .line 518
    :cond_ee
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    :cond_f1
    move v13, v14

    .local v13, state:I
    move/from16 v20, v17

    .end local v17           #zone:Z
    .restart local v20       #zone:Z
    move/from16 v21, v18

    .end local v18           #zoneOffset:I
    .restart local v21       #zoneOffset:I
    move/from16 v19, v16

    .end local v16           #year:I
    .restart local v19       #year:I
    move/from16 v17, v13

    .end local v13           #state:I
    .local v17, state:I
    move/from16 v16, v15

    .end local v15           #sign:C
    .local v16, sign:C
    move v13, v12

    .end local v12           #offset:I
    .local v13, offset:I
    move v12, v10

    .line 521
    .end local v10           #minutesOffset:I
    .local v12, minutesOffset:I
    goto/16 :goto_34

    .line 385
    .end local v14           #nextState:I
    :cond_100
    const/16 v10, 0xd

    goto/16 :goto_3f

    .line 405
    .local v10, nextState:I
    .local v13, next:I
    .local v15, offset:I
    :cond_104
    const/16 v14, 0x30

    if-gt v14, v13, :cond_110

    const/16 v14, 0x39

    if-gt v13, v14, :cond_110

    .line 406
    const/4 v10, 0x2

    move v14, v10

    .end local v10           #nextState:I
    .restart local v14       #nextState:I
    goto/16 :goto_67

    .line 407
    .end local v14           #nextState:I
    .restart local v10       #nextState:I
    :cond_110
    invoke-static {v13}, Ljava/lang/Character;->isSpace(C)Z

    move-result v14

    if-nez v14, :cond_458

    const-string v14, ",+-:/"

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_458

    .line 408
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 418
    .end local v12           #minutesOffset:I
    .end local v20           #zone:Z
    .local v10, digit:I
    .restart local v14       #nextState:I
    .local v17, zone:Z
    .restart local p0
    :cond_129
    add-int/lit8 v12, v15, 0x2

    move-object/from16 v0, p0

    move v1, v15

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_b1

    .restart local v12       #minutesOffset:I
    :cond_139
    move/from16 v16, v10

    .line 425
    goto :goto_be

    .line 428
    .end local v17           #zone:Z
    .restart local v20       #zone:Z
    :cond_13c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 430
    .restart local p0
    :cond_142
    const/16 v17, 0x46

    move v0, v10

    move/from16 v1, v17

    if-lt v0, v1, :cond_182

    .line 431
    const/16 v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_17c

    invoke-static {v13}, Ljava/lang/Character;->isSpace(C)Z

    move-result v17

    if-nez v17, :cond_16c

    const/16 v17, 0x2c

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_16c

    const/16 v17, 0x2f

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_16c

    const/16 v17, 0xd

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_17c

    .line 434
    :cond_16c
    move v10, v10

    .end local v19           #year:I
    .local v10, year:I
    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move/from16 v23, v12

    .end local v12           #minutesOffset:I
    .restart local v23       #minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v10

    .end local v10           #year:I
    .local v16, year:I
    move/from16 v10, v23

    .end local v23           #minutesOffset:I
    .local v10, minutesOffset:I
    goto/16 :goto_c9

    .line 436
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_17c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 438
    .restart local p0
    :cond_182
    const/16 v17, 0x3a

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b7

    .line 439
    const/16 v17, -0x1

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_19d

    .line 440
    move v6, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 441
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_19d
    const/16 v17, -0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b1

    .line 442
    move v7, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 444
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_1b1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 446
    .restart local p0
    :cond_1b7
    const/16 v17, 0x2f

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_1ee

    .line 447
    const/16 v17, -0x1

    move v0, v4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d4

    .line 448
    const/4 v4, 0x1

    sub-int v4, v10, v4

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 449
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_1d4
    const/16 v17, -0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e8

    .line 450
    move v5, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 452
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_1e8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 454
    .restart local p0
    :cond_1ee
    invoke-static {v13}, Ljava/lang/Character;->isSpace(C)Z

    move-result v17

    if-nez v17, :cond_209

    const/16 v17, 0x2c

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_209

    const/16 v17, 0x2d

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_209

    const/16 v17, 0xd

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_271

    .line 456
    :cond_209
    const/16 v17, -0x1

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_224

    const/16 v17, -0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_224

    .line 457
    move v7, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 458
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_224
    const/16 v17, -0x1

    move v0, v7

    move/from16 v1, v17

    if-eq v0, v1, :cond_23f

    const/16 v17, -0x1

    move v0, v8

    move/from16 v1, v17

    if-ne v0, v1, :cond_23f

    .line 459
    move v8, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 460
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_23f
    const/16 v17, -0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_253

    .line 461
    move v5, v10

    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 462
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_253
    const/16 v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_26b

    .line 463
    move v10, v10

    .end local v19           #year:I
    .local v10, year:I
    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move/from16 v23, v12

    .end local v12           #minutesOffset:I
    .restart local v23       #minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v10

    .end local v10           #year:I
    .local v16, year:I
    move/from16 v10, v23

    .end local v23           #minutesOffset:I
    .local v10, minutesOffset:I
    goto/16 :goto_c9

    .line 465
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_26b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 467
    .restart local p0
    :cond_271
    const/16 v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_297

    const/16 v17, -0x1

    move v0, v4

    move/from16 v1, v17

    if-eq v0, v1, :cond_297

    const/16 v17, -0x1

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_297

    .line 468
    move v10, v10

    .end local v19           #year:I
    .local v10, year:I
    move/from16 v17, v20

    .end local v20           #zone:Z
    .restart local v17       #zone:Z
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move/from16 v23, v12

    .end local v12           #minutesOffset:I
    .restart local v23       #minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v10

    .end local v10           #year:I
    .local v16, year:I
    move/from16 v10, v23

    .end local v23           #minutesOffset:I
    .local v10, minutesOffset:I
    goto/16 :goto_c9

    .line 470
    .end local v17           #zone:Z
    .end local v18           #zoneOffset:I
    .local v10, digit:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_297
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 472
    .end local v10           #digit:I
    .local v17, state:I
    .restart local p0
    :cond_29d
    const/4 v10, 0x1

    move/from16 v0, v17

    move v1, v10

    if-ne v0, v1, :cond_44c

    const/4 v10, 0x1

    if-eq v14, v10, :cond_44c

    .line 473
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 474
    .local v17, text:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v18, 0x1

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c3

    .line 476
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 478
    .restart local p0
    :cond_2c3
    const-string v10, "AM"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2ec

    .line 479
    const/16 v10, 0xc

    if-ne v6, v10, :cond_2df

    .line 480
    const/4 v6, 0x0

    move/from16 v17, v20

    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 481
    .end local v10           #minutesOffset:I
    .end local v18           #zoneOffset:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_2df
    const/4 v10, 0x1

    if-lt v6, v10, :cond_2e6

    const/16 v10, 0xc

    if-le v6, v10, :cond_44c

    .line 482
    :cond_2e6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 484
    .restart local p0
    :cond_2ec
    const-string v10, "PM"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_317

    .line 485
    const/16 v10, 0xc

    if-ne v6, v10, :cond_30a

    .line 486
    const/4 v6, 0x0

    .line 490
    :cond_2fc
    add-int/lit8 v6, v6, 0xc

    move/from16 v17, v20

    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .restart local v10       #minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 487
    .end local v10           #minutesOffset:I
    .end local v18           #zoneOffset:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_30a
    const/4 v10, 0x1

    if-lt v6, v10, :cond_311

    const/16 v10, 0xc

    if-le v6, v10, :cond_2fc

    .line 488
    :cond_311
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 492
    .restart local p0
    :cond_317
    new-instance v10, Ljava/text/DateFormatSymbols;

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 493
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v18

    .local v18, weekdays:[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, months:[Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .end local v18           #weekdays:[Ljava/lang/String;
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_341

    move/from16 v17, v20

    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .local v18, zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 497
    .end local v18           #zoneOffset:I
    .local v10, months:[Ljava/lang/String;
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_341
    const/16 v18, -0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_35e

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_35e

    .end local v10           #months:[Ljava/lang/String;
    move/from16 v17, v20

    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 498
    .end local v10           #minutesOffset:I
    .end local v18           #zoneOffset:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_35e
    const-string v10, "GMT"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37f

    const-string v10, "UT"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37f

    const-string v10, "UTC"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38e

    .line 499
    :cond_37f
    const/4 v10, 0x1

    .line 500
    .end local v20           #zone:Z
    .local v10, zone:Z
    const/16 v17, 0x0

    .end local v21           #zoneOffset:I
    .local v17, zoneOffset:I
    move/from16 v18, v17

    .end local v17           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move/from16 v17, v10

    .end local v10           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 501
    .end local v10           #minutesOffset:I
    .end local v18           #zoneOffset:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_38e
    invoke-static/range {v17 .. v17}, Ljava/util/Date;->zone(Ljava/lang/String;)I

    move-result v10

    .local v10, value:I
    if-eqz v10, :cond_3a1

    .line 502
    const/16 v17, 0x1

    .line 503
    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v10

    .end local v21           #zoneOffset:I
    .local v10, zoneOffset:I
    move/from16 v18, v10

    .end local v10           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v10, v12

    .end local v12           #minutesOffset:I
    .local v10, minutesOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .line 505
    .end local v18           #zoneOffset:I
    .local v10, value:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, text:Ljava/lang/String;
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_3a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 512
    .end local v19           #year:I
    .end local v20           #zone:Z
    .end local v21           #zoneOffset:I
    .local v10, minutesOffset:I
    .local v12, offset:I
    .local v15, sign:C
    .local v16, year:I
    .local v17, zone:Z
    .restart local v18       #zoneOffset:I
    .restart local p0
    :cond_3a7
    invoke-static {v13}, Ljava/lang/Character;->isSpace(C)Z

    move-result v19

    if-nez v19, :cond_e0

    const/16 v19, 0x2c

    move v0, v13

    move/from16 v1, v19

    if-eq v0, v1, :cond_e0

    const/16 v19, 0x2

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_e0

    .line 514
    const/4 v15, 0x0

    goto/16 :goto_e0

    .line 523
    .end local v10           #minutesOffset:I
    .end local v14           #nextState:I
    .end local v15           #sign:C
    .end local v18           #zoneOffset:I
    .local v12, minutesOffset:I
    .local v13, offset:I
    .local v16, sign:C
    .local v17, state:I
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_3be
    const/16 p0, -0x1

    move/from16 v0, v19

    move/from16 v1, p0

    if-eq v0, v1, :cond_443

    .end local p0
    const/16 p0, -0x1

    move v0, v4

    move/from16 v1, p0

    if-eq v0, v1, :cond_443

    const/16 p0, -0x1

    move v0, v5

    move/from16 v1, p0

    if-eq v0, v1, :cond_443

    .line 524
    const/16 p0, -0x1

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_3dc

    .line 525
    const/4 v6, 0x0

    .line 527
    :cond_3dc
    const/16 p0, -0x1

    move v0, v7

    move/from16 v1, p0

    if-ne v0, v1, :cond_3e4

    .line 528
    const/4 v7, 0x0

    .line 530
    :cond_3e4
    const/16 p0, -0x1

    move v0, v8

    move/from16 v1, p0

    if-ne v0, v1, :cond_3ec

    .line 531
    const/4 v8, 0x0

    .line 533
    :cond_3ec
    sget p0, Ljava/util/Date;->creationYear:I

    const/16 v3, 0x50

    sub-int p0, p0, v3

    move/from16 v0, v19

    move/from16 v1, p0

    if-ge v0, v1, :cond_41e

    .line 534
    .end local v3           #buffer:Ljava/lang/StringBuilder;
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x7d0

    move/from16 p0, v0

    .line 538
    .end local v19           #year:I
    .local p0, year:I
    :goto_3fe
    sub-int/2addr v7, v12

    .line 539
    if-eqz v20, :cond_430

    .line 540
    const/16 v3, 0x18

    move/from16 v0, v21

    move v1, v3

    if-ge v0, v1, :cond_40f

    const/16 v3, -0x18

    move/from16 v0, v21

    move v1, v3

    if-gt v0, v1, :cond_42d

    .line 541
    :cond_40f
    div-int/lit8 v3, v21, 0x64

    sub-int/2addr v6, v3

    .line 542
    rem-int/lit8 v3, v21, 0x64

    sub-int/2addr v7, v3

    .line 546
    :goto_415
    const/16 v3, 0x76c

    sub-int v3, p0, v3

    invoke-static/range {v3 .. v8}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v3

    .line 548
    .end local v9           #commentLevel:I
    .end local v11           #length:I
    .end local v12           #minutesOffset:I
    .end local v13           #offset:I
    :goto_41d
    return-wide v3

    .line 535
    .end local p0           #year:I
    .restart local v9       #commentLevel:I
    .restart local v11       #length:I
    .restart local v12       #minutesOffset:I
    .restart local v13       #offset:I
    .restart local v19       #year:I
    :cond_41e
    const/16 p0, 0x64

    move/from16 v0, v19

    move/from16 v1, p0

    if-ge v0, v1, :cond_449

    .line 536
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x76c

    move/from16 p0, v0

    .end local v19           #year:I
    .restart local p0       #year:I
    goto :goto_3fe

    .line 544
    :cond_42d
    sub-int v6, v6, v21

    goto :goto_415

    .line 548
    :cond_430
    new-instance v9, Ljava/util/Date;

    .end local v9           #commentLevel:I
    const/16 v3, 0x76c

    sub-int v10, p0, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Ljava/util/Date;-><init>(IIIIII)V

    .end local v11           #length:I
    .end local v12           #minutesOffset:I
    .end local v13           #offset:I
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_41d

    .line 551
    .end local p0           #year:I
    .restart local v3       #buffer:Ljava/lang/StringBuilder;
    .restart local v9       #commentLevel:I
    .restart local v11       #length:I
    .restart local v12       #minutesOffset:I
    .restart local v13       #offset:I
    .restart local v19       #year:I
    :cond_443
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .end local v3           #buffer:Ljava/lang/StringBuilder;
    :cond_449
    move/from16 p0, v19

    .end local v19           #year:I
    .restart local p0       #year:I
    goto :goto_3fe

    .end local v17           #state:I
    .restart local v3       #buffer:Ljava/lang/StringBuilder;
    .local v13, next:I
    .restart local v14       #nextState:I
    .local v15, offset:I
    .restart local v19       #year:I
    .local p0, string:Ljava/lang/String;
    :cond_44c
    move/from16 v17, v20

    .end local v20           #zone:Z
    .local v17, zone:Z
    move v10, v12

    .end local v12           #minutesOffset:I
    .restart local v10       #minutesOffset:I
    move/from16 v18, v21

    .end local v21           #zoneOffset:I
    .restart local v18       #zoneOffset:I
    move v12, v15

    .end local v15           #offset:I
    .local v12, offset:I
    move/from16 v15, v16

    .end local v16           #sign:C
    .local v15, sign:C
    move/from16 v16, v19

    .end local v19           #year:I
    .local v16, year:I
    goto/16 :goto_c9

    .end local v14           #nextState:I
    .end local v18           #zoneOffset:I
    .local v10, nextState:I
    .local v12, minutesOffset:I
    .local v15, offset:I
    .local v16, sign:C
    .local v17, state:I
    .restart local v19       #year:I
    .restart local v20       #zone:Z
    .restart local v21       #zoneOffset:I
    :cond_458
    move v14, v10

    .end local v10           #nextState:I
    .restart local v14       #nextState:I
    goto/16 :goto_67

    .end local v13           #next:I
    .end local v14           #nextState:I
    .local v10, next:C
    :cond_45b
    move v13, v15

    .end local v15           #offset:I
    .local v13, offset:I
    goto/16 :goto_34

    .end local v13           #offset:I
    .restart local v15       #offset:I
    :cond_45e
    move v13, v10

    .local v13, next:I
    goto/16 :goto_54
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 794
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 795
    return-void
.end method

.method private toTwoDigits(I)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 720
    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    .line 721
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 788
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 789
    return-void
.end method

.method private static zone(Ljava/lang/String;)I
    .registers 5
    .parameter "text"

    .prologue
    const/4 v3, -0x5

    const/4 v2, -0x6

    const/4 v1, -0x7

    .line 759
    const-string v0, "EST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    .line 783
    :goto_c
    return v0

    .line 762
    :cond_d
    const-string v0, "EDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 763
    const/4 v0, -0x4

    goto :goto_c

    .line 765
    :cond_17
    const-string v0, "CST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 766
    goto :goto_c

    .line 768
    :cond_21
    const-string v0, "CDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v3

    .line 769
    goto :goto_c

    .line 771
    :cond_2b
    const-string v0, "MST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v1

    .line 772
    goto :goto_c

    .line 774
    :cond_35
    const-string v0, "MDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v2

    .line 775
    goto :goto_c

    .line 777
    :cond_3f
    const-string v0, "PST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 778
    const/4 v0, -0x8

    goto :goto_c

    .line 780
    :cond_49
    const-string v0, "PDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    .line 781
    goto :goto_c

    .line 783
    :cond_53
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 160
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public before(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 172
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 185
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 186
    :catch_5
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 6
    .parameter "date"

    .prologue
    .line 201
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 202
    const/4 v0, -0x1

    .line 207
    :goto_9
    return v0

    .line 204
    :cond_a
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 205
    const/4 v0, 0x0

    goto :goto_9

    .line 207
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 224
    if-eq p1, p0, :cond_10

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    check-cast p1, Ljava/util/Date;

    .end local p1
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getDate()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDay()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHours()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 321
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const v2, 0xea60

    div-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x76c

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 346
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDate(I)V
    .registers 5
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 565
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 566
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 567
    return-void
.end method

.method public setHours(I)V
    .registers 5
    .parameter "hour"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 580
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 581
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 582
    return-void
.end method

.method public setMinutes(I)V
    .registers 5
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 595
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 596
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 597
    return-void
.end method

.method public setMonth(I)V
    .registers 5
    .parameter "month"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 610
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 611
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 612
    return-void
.end method

.method public setSeconds(I)V
    .registers 5
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 625
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 626
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 627
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 637
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 638
    return-void
.end method

.method public setYear(I)V
    .registers 5
    .parameter "year"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 651
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    add-int/lit16 v2, p1, 0x76c

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 652
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 653
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "d MMM "

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 667
    .local v0, format1:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, " HH:mm:ss \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 668
    .local v1, format2:Ljava/text/SimpleDateFormat;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 669
    .local v3, gmtZone:Ljava/util/TimeZone;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 670
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 671
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 672
    .local v2, gc:Ljava/util/GregorianCalendar;
    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 706
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 707
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 708
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Date;->dayOfWeekNames:[Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Date;->monthNames:[Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/Date;->toTwoDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/Date;->toTwoDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/Date;->toTwoDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/Date;->toTwoDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
