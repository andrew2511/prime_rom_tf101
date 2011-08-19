.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 908
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "dstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monthLength"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "rawOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startYear"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useDaylight"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "offset"
    .parameter "name"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 75
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 96
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 97
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .registers 23
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"

    .prologue
    .line 182
    const v11, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 184
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 15
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "daylightSavings"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 247
    if-gtz p11, :cond_1e

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid daylightSavings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1e
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 252
    invoke-virtual {p0, p3, p4, p5, p6}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 253
    invoke-virtual {p0, p7, p8, p9, p10}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 258
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 28
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "startTimeMode"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "endTimeMode"
    .parameter "daylightSavings"

    .prologue
    .line 311
    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p13

    invoke-direct/range {v2 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 313
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Ljava/util/SimpleTimeZone;->startMode:I

    .line 314
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Ljava/util/SimpleTimeZone;->endMode:I

    .line 315
    return-void
.end method

.method private checkDay(II)V
    .registers 6
    .parameter "month"
    .parameter "day"

    .prologue
    .line 605
    if-lez p2, :cond_8

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p1

    if-le p2, v0, :cond_21

    .line 606
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_21
    return-void
.end method

.method private checkRange(III)V
    .registers 7
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 593
    if-ltz p1, :cond_6

    const/16 v0, 0xb

    if-le p1, v0, :cond_1f

    .line 594
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1f
    const/4 v0, 0x1

    if-lt p2, v0, :cond_25

    const/4 v0, 0x7

    if-le p2, v0, :cond_3e

    .line 597
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_3e
    if-ltz p3, :cond_45

    const v0, 0x5265c00

    if-lt p3, v0, :cond_5e

    .line 600
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_5e
    return-void
.end method

.method private isLeapYear(I)Z
    .registers 5
    .parameter "year"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 565
    const/16 v0, 0x62e

    if-le p1, v0, :cond_16

    .line 566
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_12
    move v0, v2

    .line 568
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 566
    goto :goto_13

    .line 568
    :cond_16
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_13

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method private mod7(I)I
    .registers 4
    .parameter "num1"

    .prologue
    .line 573
    rem-int/lit8 v0, p1, 0x7

    .line 574
    .local v0, rem:I
    if-gez p1, :cond_9

    if-gez v0, :cond_9

    add-int/lit8 v1, v0, 0x7

    :goto_8
    return v1

    :cond_9
    move v1, v0

    goto :goto_8
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 977
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 978
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "rawOffset"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 979
    const-string v3, "useDaylight"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 980
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_43

    .line 981
    const-string v3, "endMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 982
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 983
    const-string v3, "startMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 984
    const-string v3, "startTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 985
    const-string v3, "startYear"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 987
    :cond_43
    const-string v3, "serialVersionOnStream"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_76

    .line 988
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_75

    .line 989
    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 990
    const-string v3, "endDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 991
    const-string v3, "endDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 992
    const-string v3, "startDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 993
    const-string v3, "startDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1017
    :cond_75
    :goto_75
    return-void

    .line 996
    :cond_76
    const-string v3, "dstSavings"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 997
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_75

    .line 998
    const-string v3, "endMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 999
    const-string v3, "startMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1000
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1001
    .local v1, length:I
    new-array v2, v1, [B

    .line 1002
    .local v2, values:[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 1003
    const/4 v3, 0x4

    if-lt v1, v3, :cond_75

    .line 1004
    aget-byte v3, v2, v4

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1005
    aget-byte v3, v2, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1006
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v3, v5, :cond_af

    .line 1007
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1009
    :cond_af
    aget-byte v3, v2, v6

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1010
    const/4 v3, 0x3

    aget-byte v3, v2, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1011
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v3, v5, :cond_75

    .line 1012
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_75
.end method

.method private setEndMode()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 611
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_38

    .line 612
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 624
    :goto_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_55

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_55

    move v0, v3

    :goto_11
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 625
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2e

    .line 626
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v1, v3, :cond_57

    move v1, v3

    :goto_1e
    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0, v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 628
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v4, :cond_5a

    .line 629
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-direct {p0, v0, v1}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 636
    :cond_2e
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v3, :cond_37

    .line 637
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 639
    :cond_37
    return-void

    .line 613
    :cond_38
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-gez v0, :cond_52

    .line 614
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 615
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-gez v0, :cond_4e

    .line 616
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 617
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 619
    :cond_4e
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 622
    :cond_52
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 624
    :cond_55
    const/4 v0, 0x0

    goto :goto_11

    .line 626
    :cond_57
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_1e

    .line 631
    :cond_5a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_64

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2e

    .line 632
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStartMode()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 742
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_38

    .line 743
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 755
    :goto_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_55

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_55

    move v0, v3

    :goto_11
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 756
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2e

    .line 757
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v1, v3, :cond_57

    move v1, v3

    :goto_1e
    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0, v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 759
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v4, :cond_5a

    .line 760
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-direct {p0, v0, v1}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 767
    :cond_2e
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v3, :cond_37

    .line 768
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 770
    :cond_37
    return-void

    .line 744
    :cond_38
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-gez v0, :cond_52

    .line 745
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 746
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-gez v0, :cond_4e

    .line 747
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 748
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 750
    :cond_4e
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 753
    :cond_52
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 755
    :cond_55
    const/4 v0, 0x0

    goto :goto_11

    .line 757
    :cond_57
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_1e

    .line 762
    :cond_5a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_64

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2e

    .line 763
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 15
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 927
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .local v2, sEndDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v7, 0x1

    .local v3, sEndDayOfWeek:I
    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .local v4, sStartDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v5, v7, 0x1

    .line 928
    .local v5, sStartDayOfWeek:I
    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_5a

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v9, :cond_1d

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v9, :cond_5a

    .line 930
    :cond_1d
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 931
    .local v0, cal:Ljava/util/Calendar;
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v9, :cond_3e

    .line 932
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 933
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v8, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 934
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 935
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v7, v10, :cond_3e

    .line 936
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    .line 939
    :cond_3e
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v7, v9, :cond_5a

    .line 940
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 941
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v8, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 942
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 943
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_5a

    .line 944
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 948
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_5a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 949
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "dstSavings"

    iget v8, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 950
    const-string v7, "endDay"

    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 951
    const-string v7, "endDayOfWeek"

    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 952
    const-string v7, "endMode"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 953
    const-string v7, "endMonth"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 954
    const-string v7, "endTime"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 955
    const-string v7, "monthLength"

    sget-object v8, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    const-string v7, "rawOffset"

    iget v8, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 957
    const-string v7, "serialVersionOnStream"

    invoke-virtual {v1, v7, v10}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 958
    const-string v7, "startDay"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 959
    const-string v7, "startDayOfWeek"

    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 960
    const-string v7, "startMode"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 961
    const-string v7, "startMonth"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 962
    const-string v7, "startTime"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 963
    const-string v7, "startYear"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 964
    const-string v7, "useDaylight"

    iget-boolean v8, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 965
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 966
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 967
    new-array v6, v12, [B

    .line 968
    .local v6, values:[B
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v11

    .line 969
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_eb

    move v7, v11

    :goto_d6
    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 970
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 971
    const/4 v7, 0x3

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v8, v10, :cond_f0

    move v8, v11

    :goto_e4
    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 972
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 973
    return-void

    .line 969
    :cond_eb
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 971
    :cond_f0
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_e4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 326
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 327
    .local v0, zone:Ljava/util/SimpleTimeZone;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 343
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_7

    move v2, v4

    .line 347
    :goto_6
    return v2

    .line 346
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    move-object v1, v0

    .line 347
    .local v1, tz:Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_71

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_73

    :cond_71
    const/4 v2, 0x1

    goto :goto_6

    :cond_73
    move v2, v4

    goto :goto_6
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_6

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_5
.end method

.method public getOffset(IIIIII)I
    .registers 22
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 370
    if-eqz p1, :cond_24

    const/4 v11, 0x1

    move/from16 v0, p1

    move v1, v11

    if-eq v0, v1, :cond_24

    .line 371
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid era: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 373
    :cond_24
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 374
    const/4 v11, 0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_44

    const/16 v11, 0x1d

    move/from16 v0, p4

    move v1, v11

    if-ne v0, v1, :cond_44

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-nez v11, :cond_4c

    .line 375
    :cond_44
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 380
    :cond_4c
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_5f

    const/4 v11, 0x1

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_5f

    iget v11, p0, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    move v1, v11

    if-ge v0, v1, :cond_62

    .line 381
    :cond_5f
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 497
    :goto_61
    return v11

    .line 383
    :cond_62
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge v11, v12, :cond_79

    .line 384
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-le v0, v1, :cond_8a

    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-ge v0, v1, :cond_8a

    .line 385
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_61

    .line 388
    :cond_79
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-lt v0, v1, :cond_87

    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-le v0, v1, :cond_8a

    .line 389
    :cond_87
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_61

    .line 393
    :cond_8a
    const/4 v8, 0x0

    .local v8, ruleDay:I
    sub-int v11, p5, p4

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v6

    .line 394
    .local v6, firstDayOfMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_11b

    .line 395
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v11, :pswitch_data_1fc

    .line 430
    :cond_9d
    :goto_9d
    move v0, v8

    move/from16 v1, p4

    if-gt v0, v1, :cond_ae

    move v0, v8

    move/from16 v1, p4

    if-ne v0, v1, :cond_11b

    iget v11, p0, Ljava/util/SimpleTimeZone;->startTime:I

    move/from16 v0, p6

    move v1, v11

    if-ge v0, v1, :cond_11b

    .line 431
    :cond_ae
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_61

    .line 397
    :pswitch_b1
    iget v8, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 398
    goto :goto_9d

    .line 400
    :pswitch_b4
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ltz v11, :cond_ca

    .line 401
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v11, v6

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    goto :goto_9d

    .line 404
    :cond_ca
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v12, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v5, v11, v12

    .line 405
    .local v5, daysInMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e0

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_e0

    .line 407
    add-int/lit8 v5, v5, 0x1

    .line 409
    :cond_e0
    add-int/lit8 v11, v5, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDay:I

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 415
    goto :goto_9d

    .line 417
    .end local v5           #daysInMonth:I
    :pswitch_f3
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 420
    goto :goto_9d

    .line 422
    :pswitch_104
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 425
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v8, v11, :cond_9d

    .line 426
    add-int/lit8 v8, v8, -0x7

    goto :goto_9d

    .line 435
    :cond_11b
    iget v11, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int v10, v11, v12

    .line 436
    .local v10, ruleTime:I
    add-int/lit8 v11, p3, 0x1

    rem-int/lit8 v7, v11, 0xc

    .line 437
    .local v7, nextMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-eq v0, v1, :cond_132

    if-gez v10, :cond_1f4

    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v7, v11, :cond_1f4

    .line 438
    :cond_132
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v11, :pswitch_data_208

    .line 473
    :cond_137
    :goto_137
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 474
    .local v9, ruleMonth:I
    if-gez v10, :cond_169

    .line 475
    const/4 v11, 0x1

    const v12, 0x5265c00

    div-int v12, v10, v12

    sub-int v4, v11, v12

    .line 476
    .local v4, changeDays:I
    const v11, 0x5265c00

    rem-int v11, v10, v11

    const v12, 0x5265c00

    add-int v10, v11, v12

    .line 477
    sub-int/2addr v8, v4

    .line 478
    if-gtz v8, :cond_169

    .line 479
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_156

    .line 480
    const/16 v9, 0xb

    .line 482
    :cond_156
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v11, v11, v9

    add-int/2addr v8, v11

    .line 483
    const/4 v11, 0x1

    if-ne v9, v11, :cond_169

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_169

    .line 484
    add-int/lit8 v8, v8, 0x1

    .line 489
    .end local v4           #changeDays:I
    :cond_169
    move/from16 v0, p3

    move v1, v9

    if-ne v0, v1, :cond_1ee

    .line 490
    move v0, v8

    move/from16 v1, p4

    if-lt v0, v1, :cond_17d

    move v0, v8

    move/from16 v1, p4

    if-ne v0, v1, :cond_1f4

    move/from16 v0, p6

    move v1, v10

    if-lt v0, v1, :cond_1f4

    .line 491
    :cond_17d
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_61

    .line 440
    .end local v9           #ruleMonth:I
    :pswitch_181
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 441
    goto :goto_137

    .line 443
    :pswitch_184
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ltz v11, :cond_19a

    .line 444
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v11, v6

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    goto :goto_137

    .line 447
    :cond_19a
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v12, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v5, v11, v12

    .line 448
    .restart local v5       #daysInMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1b0

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_1b0

    .line 449
    add-int/lit8 v5, v5, 0x1

    .line 451
    :cond_1b0
    add-int/lit8 v11, v5, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDay:I

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 457
    goto/16 :goto_137

    .line 459
    .end local v5           #daysInMonth:I
    :pswitch_1c4
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 462
    goto/16 :goto_137

    .line 464
    :pswitch_1d6
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 467
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v8, v11, :cond_137

    .line 468
    add-int/lit8 v8, v8, -0x7

    goto/16 :goto_137

    .line 493
    .restart local v9       #ruleMonth:I
    :cond_1ee
    if-eq v7, v9, :cond_1f4

    .line 494
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_61

    .line 497
    .end local v9           #ruleMonth:I
    :cond_1f4
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v11, v12

    goto/16 :goto_61

    .line 395
    nop

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b4
        :pswitch_f3
        :pswitch_104
    .end packed-switch

    .line 438
    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_181
        :pswitch_184
        :pswitch_1c4
        :pswitch_1d6
    .end packed-switch
.end method

.method public getOffset(J)I
    .registers 11
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    .line 504
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_a

    .line 505
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 508
    :goto_9
    return v0

    .line 507
    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Grego;->timeToFields(J[I)[I

    move-result-object v7

    .line 508
    .local v7, fields:[I
    const/4 v0, 0x0

    aget v2, v7, v0

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    goto :goto_9
.end method

.method public getRawOffset()I
    .registers 2

    .prologue
    .line 515
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 8
    .parameter "zone"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_8

    move v2, v4

    .line 548
    :goto_7
    return v2

    .line 541
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    move-object v1, v0

    .line 542
    .local v1, tz:Ljava/util/SimpleTimeZone;
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eq v2, v3, :cond_14

    move v2, v4

    .line 543
    goto :goto_7

    .line 545
    :cond_14
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v2, :cond_22

    .line 546
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_7

    :cond_20
    move v2, v4

    goto :goto_7

    .line 548
    :cond_22
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_72

    move v2, v5

    goto :goto_7

    :cond_72
    move v2, v4

    goto :goto_7
.end method

.method public declared-synchronized hashCode()I
    .registers 4

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int v0, v1, v2

    .line 528
    .local v0, hashCode:I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_35

    .line 529
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_37

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 533
    :cond_35
    monitor-exit p0

    return v0

    .line 527
    .end local v0           #hashCode:I
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 4
    .parameter "time"

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setDSTSavings(I)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 585
    if-lez p1, :cond_5

    .line 586
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 590
    return-void

    .line 588
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setEndRule(III)V
    .registers 5
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 654
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 655
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 657
    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 658
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 665
    return-void
.end method

.method public setEndRule(IIII)V
    .registers 5
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 683
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 684
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 685
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 686
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 687
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 694
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .registers 7
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 714
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 715
    if-eqz p5, :cond_10

    move v0, p2

    :goto_5
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 716
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 717
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 718
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 725
    return-void

    .line 715
    :cond_10
    neg-int v0, p2

    goto :goto_5
.end method

.method public setRawOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 735
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 739
    return-void
.end method

.method public setStartRule(III)V
    .registers 5
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 785
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 786
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 788
    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 789
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 796
    return-void
.end method

.method public setStartRule(IIII)V
    .registers 5
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 814
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 815
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 816
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 817
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 818
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 825
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .registers 7
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 845
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 846
    if-eqz p5, :cond_10

    move v0, p2

    :goto_5
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 847
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 848
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 849
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 856
    return-void

    .line 846
    :cond_10
    neg-int v0, p2

    goto :goto_5
.end method

.method public setStartYear(I)V
    .registers 3
    .parameter "year"

    .prologue
    .line 866
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 868
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_e8

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v1, v3, :cond_e8

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :goto_87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_ea

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v1, v3, :cond_ea

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :goto_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e8
    move v1, v2

    goto :goto_87

    :cond_ea
    move v1, v2

    goto :goto_cd
.end method

.method public useDaylightTime()Z
    .registers 2

    .prologue
    .line 905
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
