.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1270
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 233
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 4
    .parameter "template"
    .parameter "value"

    .prologue
    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 347
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 349
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 367
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 368
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 369
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 371
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .parameter "locale"

    .prologue
    const/4 v2, 0x1

    .line 373
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 374
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 375
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 376
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 377
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 378
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 379
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 380
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 381
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V
    .registers 16
    .parameter "buffer"
    .parameter "position"
    .parameter
    .parameter "format"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 587
    .local v2, field:I
    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 588
    .local v4, index:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_29

    .line 589
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 592
    :cond_29
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 593
    .local v0, beginPosition:I
    const/4 v1, 0x0

    .line 594
    .local v1, dateFormatField:Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_168

    .line 693
    :goto_31
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3d

    .line 694
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 697
    :cond_3d
    if-eqz p3, :cond_144

    .line 698
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 699
    .restart local p2
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 700
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 701
    invoke-virtual {p3, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_51
    :goto_51
    return-void

    .line 596
    :pswitch_52
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 597
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 600
    :pswitch_65
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 601
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 607
    .local v6, year:I
    const/4 v7, 0x2

    if-ne p5, v7, :cond_78

    .line 608
    const/4 v7, 0x2

    rem-int/lit8 v6, v6, 0x64

    invoke-direct {p0, p1, v7, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 610
    :cond_78
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 614
    .end local v6           #year:I
    :pswitch_7c
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 615
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_31

    .line 618
    :pswitch_8a
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 619
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_31

    .line 622
    :pswitch_98
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 623
    const/4 v2, 0x5

    .line 624
    goto :goto_31

    .line 626
    :pswitch_9c
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 627
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 628
    .local v3, hour:I
    if-nez v3, :cond_ae

    const/16 v7, 0x18

    :goto_aa
    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    :cond_ae
    move v7, v3

    goto :goto_aa

    .line 631
    .end local v3           #hour:I
    :pswitch_b0
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 632
    const/16 v2, 0xb

    .line 633
    goto/16 :goto_31

    .line 635
    :pswitch_b6
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 636
    const/16 v2, 0xc

    .line 637
    goto/16 :goto_31

    .line 639
    :pswitch_bc
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 640
    const/16 v2, 0xd

    .line 641
    goto/16 :goto_31

    .line 643
    :pswitch_c2
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 644
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 645
    .local v5, value:I
    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    .line 648
    .end local v5           #value:I
    :pswitch_d1
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 649
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 652
    :pswitch_e0
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 653
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 656
    :pswitch_ef
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 657
    const/4 v2, 0x6

    .line 658
    goto/16 :goto_31

    .line 660
    :pswitch_f4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 661
    const/16 v2, 0x8

    .line 662
    goto/16 :goto_31

    .line 664
    :pswitch_fa
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 665
    const/4 v2, 0x3

    .line 666
    goto/16 :goto_31

    .line 668
    :pswitch_ff
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 669
    const/4 v2, 0x4

    .line 670
    goto/16 :goto_31

    .line 672
    :pswitch_104
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 673
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_31

    .line 676
    :pswitch_119
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 677
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 678
    .restart local v3       #hour:I
    if-nez v3, :cond_12c

    const/16 v7, 0xc

    :goto_127
    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    :cond_12c
    move v7, v3

    goto :goto_127

    .line 681
    .end local v3           #hour:I
    :pswitch_12e
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 682
    const/16 v2, 0xa

    .line 683
    goto/16 :goto_31

    .line 685
    :pswitch_134
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 686
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 689
    :pswitch_13c
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 690
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto/16 :goto_31

    .line 704
    :cond_144
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_156

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_51

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_51

    :cond_156
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_51

    .line 707
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 708
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_51

    .line 594
    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_52
        :pswitch_65
        :pswitch_8a
        :pswitch_98
        :pswitch_9c
        :pswitch_b0
        :pswitch_b6
        :pswitch_bc
        :pswitch_c2
        :pswitch_e0
        :pswitch_ef
        :pswitch_f4
        :pswitch_fa
        :pswitch_ff
        :pswitch_104
        :pswitch_119
        :pswitch_12e
        :pswitch_134
        :pswitch_13c
        :pswitch_7c
        :pswitch_d1
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    .line 714
    const/4 v2, 0x3

    if-le p2, v2, :cond_15

    const/4 v2, 0x1

    move v1, v2

    .line 715
    .local v1, isLong:Z
    :goto_5
    if-eqz v1, :cond_18

    move-object v0, p3

    .line 716
    .local v0, days:[Ljava/lang/String;
    :goto_8
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    return-void

    .line 714
    .end local v0           #days:[Ljava/lang/String;
    .end local v1           #isLong:Z
    :cond_15
    const/4 v2, 0x0

    move v1, v2

    goto :goto_5

    .restart local v1       #isLong:Z
    :cond_18
    move-object v0, p4

    .line 715
    goto :goto_8
.end method

.method private appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 720
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 721
    .local v1, month:I
    if-gt p2, v4, :cond_f

    .line 722
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 729
    :goto_e
    return-void

    .line 726
    :cond_f
    const/4 v3, 0x3

    if-le p2, v3, :cond_1d

    const/4 v3, 0x1

    move v0, v3

    .line 727
    .local v0, isLong:Z
    :goto_14
    if-eqz v0, :cond_20

    move-object v2, p3

    .line 728
    .local v2, months:[Ljava/lang/String;
    :goto_17
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 726
    .end local v0           #isLong:Z
    .end local v2           #months:[Ljava/lang/String;
    :cond_1d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_14

    .restart local v0       #isLong:Z
    :cond_20
    move-object v2, p4

    .line 727
    goto :goto_17
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 9
    .parameter "buffer"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 783
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 784
    .local v0, minimumIntegerDigits:I
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 785
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 786
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 787
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V
    .registers 10
    .parameter "buffer"
    .parameter "generalTimeZone"

    .prologue
    const v6, 0x36ee80

    const/4 v5, 0x2

    .line 765
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 766
    .local v0, offset:I
    const/16 v1, 0x2b

    .line 767
    .local v1, sign:C
    if-gez v0, :cond_1d

    .line 768
    const/16 v1, 0x2d

    .line 769
    neg-int v0, v0

    .line 771
    :cond_1d
    if-eqz p2, :cond_24

    .line 772
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    :cond_24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 775
    div-int v2, v0, v6

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 776
    if-eqz p2, :cond_33

    .line 777
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 779
    :cond_33
    rem-int v2, v0, v6

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 780
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 12
    .parameter "buffer"
    .parameter "count"
    .parameter "generalTimeZone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 741
    if-eqz p3, :cond_41

    .line 742
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 743
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_2b

    move v1, v7

    .line 744
    .local v1, daylight:Z
    :goto_15
    const/4 v4, 0x4

    if-ge p2, v4, :cond_2d

    move v2, v6

    .line 745
    .local v2, style:I
    :goto_19
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2f

    .line 746
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :goto_2a
    return-void

    .restart local v3       #tz:Ljava/util/TimeZone;
    :cond_2b
    move v1, v6

    .line 743
    goto :goto_15

    .restart local v1       #daylight:Z
    :cond_2d
    move v2, v7

    .line 744
    goto :goto_19

    .line 751
    .restart local v2       #style:I
    :cond_2f
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZones;->lookupDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, custom:Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 753
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 758
    .end local v0           #custom:Ljava/lang/String;
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :cond_41
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto :goto_2a
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .parameter "template"
    .parameter "fromChars"
    .parameter "toChars"
    .parameter "check"

    .prologue
    .line 1234
    if-nez p3, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, p0

    .line 1257
    :goto_9
    return-object v6

    .line 1237
    :cond_a
    const/4 v5, 0x0

    .line 1238
    .local v5, quote:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v4, output:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1240
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v2, :cond_80

    .line 1242
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1243
    .local v3, next:C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_23

    .line 1244
    if-nez v5, :cond_36

    const/4 v6, 0x1

    move v5, v6

    .line 1246
    :cond_23
    :goto_23
    if-nez v5, :cond_39

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_39

    .line 1247
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1240
    .end local v1           #index:I
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1244
    :cond_36
    const/4 v6, 0x0

    move v5, v6

    goto :goto_23

    .line 1248
    :cond_39
    if-eqz p3, :cond_7c

    if-nez v5, :cond_7c

    const/16 v6, 0x61

    if-lt v3, v6, :cond_45

    const/16 v6, 0x7a

    if-le v3, v6, :cond_4d

    :cond_45
    const/16 v6, 0x41

    if-lt v3, v6, :cond_7c

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_7c

    .line 1249
    :cond_4d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1251
    :cond_7c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 1254
    .end local v3           #next:C
    :cond_80
    if-eqz v5, :cond_8a

    .line 1255
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1257
    :cond_8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9
.end method

.method private static defaultPattern()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 426
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 427
    .local v0, localeData:Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .registers 5
    .parameter "position"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 790
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 791
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;
    .registers 16
    .parameter "date"
    .parameter "buffer"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 534
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 535
    .local v10, quote:Z
    const/4 v7, -0x1

    .local v7, last:I
    const/4 v5, 0x0

    .line 536
    .local v5, count:I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 537
    if-eqz p3, :cond_d

    .line 538
    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    .line 541
    :cond_d
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 542
    .local v9, patternLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14
    if-ge v6, v9, :cond_76

    .line 543
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 544
    .local v8, next:I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_3f

    .line 545
    if-lez v5, :cond_2b

    .line 546
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 547
    const/4 v5, 0x0

    .line 549
    :cond_2b
    if-ne v7, v8, :cond_3a

    .line 550
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 551
    const/4 v7, -0x1

    .line 555
    :goto_33
    if-nez v10, :cond_3c

    const/4 v0, 0x1

    move v10, v0

    .line 542
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 553
    :cond_3a
    move v7, v8

    goto :goto_33

    .line 555
    :cond_3c
    const/4 v0, 0x0

    move v10, v0

    goto :goto_37

    .line 558
    :cond_3f
    if-nez v10, :cond_65

    if-eq v7, v8, :cond_53

    const/16 v0, 0x61

    if-lt v8, v0, :cond_4b

    const/16 v0, 0x7a

    if-le v8, v0, :cond_53

    :cond_4b
    const/16 v0, 0x41

    if-lt v8, v0, :cond_65

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_65

    .line 560
    :cond_53
    if-ne v7, v8, :cond_58

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 563
    :cond_58
    if-lez v5, :cond_62

    .line 564
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 566
    :cond_62
    move v7, v8

    .line 567
    const/4 v5, 0x1

    goto :goto_37

    .line 570
    :cond_65
    if-lez v5, :cond_70

    .line 571
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 572
    const/4 v5, 0x0

    .line 574
    :cond_70
    const/4 v7, -0x1

    .line 575
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 578
    .end local v8           #next:I
    :cond_76
    if-lez v5, :cond_80

    .line 579
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 581
    :cond_80
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .registers 10
    .parameter "date"

    .prologue
    .line 486
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 487
    .local v2, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 490
    .local v3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    .line 493
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, as:Ljava/text/AttributedString;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_36

    .line 497
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 498
    .local v5, pos:Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 499
    .local v1, attribute:Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 503
    .end local v1           #attribute:Ljava/text/Format$Field;
    .end local v5           #pos:Ljava/text/FieldPosition;
    :cond_36
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .registers 24
    .parameter "string"
    .parameter "offset"
    .parameter "format"
    .parameter "count"

    .prologue
    .line 844
    const-string v5, "GyMdkHmsSEDFwWahKzZLc"

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 845
    .local v15, index:I
    const/4 v5, -0x1

    if-ne v15, v5, :cond_2e

    .line 846
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown pattern character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    :cond_2e
    const/4 v12, -0x1

    .line 850
    .local v12, field:I
    const/4 v9, 0x0

    .line 851
    .local v9, absolute:I
    if-gez p4, :cond_39

    .line 852
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 853
    move/from16 v9, p4

    .line 855
    :cond_39
    packed-switch v15, :pswitch_data_1ea

    .line 950
    :goto_3c
    const/4 v5, -0x1

    if-eq v12, v5, :cond_1e5

    .line 951
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v8 .. v13}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v5

    .line 953
    :goto_4a
    return v5

    .line 857
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v5

    goto :goto_4a

    .line 859
    :pswitch_60
    const/4 v5, 0x3

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_68

    .line 860
    const/4 v12, 0x1

    goto :goto_3c

    .line 862
    :cond_68
    new-instance v16, Ljava/text/ParsePosition;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 863
    .local v16, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v17

    .line 864
    .local v17, result:Ljava/lang/Number;
    if-nez v17, :cond_86

    .line 865
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_4a

    .line 867
    :cond_86
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 869
    .local v18, year:I
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int v5, v5, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ac

    if-ltz v18, :cond_ac

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move v5, v0

    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v5, v5, 0x64

    add-int v18, v18, v5

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_ac

    .line 872
    add-int/lit8 v18, v18, 0x64

    .line 875
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 876
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    goto :goto_4a

    .line 880
    .end local v16           #position:Ljava/text/ParsePosition;
    .end local v17           #result:Ljava/lang/Number;
    .end local v18           #year:I
    :pswitch_be
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v10, v5, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v11, v5, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-direct/range {v5 .. v11}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_4a

    .line 883
    :pswitch_da
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v10, v5, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v11, v5, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-direct/range {v5 .. v11}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_4a

    .line 886
    :pswitch_f6
    const/4 v12, 0x5

    .line 887
    goto/16 :goto_3c

    .line 889
    :pswitch_f9
    new-instance v16, Ljava/text/ParsePosition;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 890
    .restart local v16       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v17

    .line 891
    .restart local v17       #result:Ljava/lang/Number;
    if-nez v17, :cond_118

    .line 892
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_4a

    .line 894
    :cond_118
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 895
    .local v14, hour:I
    const/16 v5, 0x18

    if-ne v14, v5, :cond_121

    .line 896
    const/4 v14, 0x0

    .line 898
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->set(II)V

    .line 899
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    goto/16 :goto_4a

    .line 901
    .end local v14           #hour:I
    .end local v16           #position:Ljava/text/ParsePosition;
    .end local v17           #result:Ljava/lang/Number;
    :pswitch_131
    const/16 v12, 0xb

    .line 902
    goto/16 :goto_3c

    .line 904
    :pswitch_135
    const/16 v12, 0xc

    .line 905
    goto/16 :goto_3c

    .line 907
    :pswitch_139
    const/16 v12, 0xd

    .line 908
    goto/16 :goto_3c

    .line 910
    :pswitch_13d
    const/16 v12, 0xe

    .line 911
    goto/16 :goto_3c

    .line 913
    :pswitch_141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v6, v0

    iget-object v6, v6, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_4a

    .line 915
    :pswitch_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v6, v0

    iget-object v6, v6, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_4a

    .line 917
    :pswitch_179
    const/4 v12, 0x6

    .line 918
    goto/16 :goto_3c

    .line 920
    :pswitch_17c
    const/16 v12, 0x8

    .line 921
    goto/16 :goto_3c

    .line 923
    :pswitch_180
    const/4 v12, 0x3

    .line 924
    goto/16 :goto_3c

    .line 926
    :pswitch_183
    const/4 v12, 0x4

    .line 927
    goto/16 :goto_3c

    .line 929
    :pswitch_186
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_4a

    .line 931
    :pswitch_19d
    new-instance v16, Ljava/text/ParsePosition;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 932
    .restart local v16       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v17

    .line 933
    .restart local v17       #result:Ljava/lang/Number;
    if-nez v17, :cond_1bc

    .line 934
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_4a

    .line 936
    :cond_1bc
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 937
    .restart local v14       #hour:I
    const/16 v5, 0xc

    if-ne v14, v5, :cond_1c5

    .line 938
    const/4 v14, 0x0

    .line 940
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->set(II)V

    .line 941
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    goto/16 :goto_4a

    .line 943
    .end local v14           #hour:I
    .end local v16           #position:Ljava/text/ParsePosition;
    .end local v17           #result:Ljava/lang/Number;
    :pswitch_1d5
    const/16 v12, 0xa

    .line 944
    goto/16 :goto_3c

    .line 946
    :pswitch_1d9
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_4a

    .line 948
    :pswitch_1df
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_4a

    :cond_1e5
    move/from16 v5, p2

    .line 953
    goto/16 :goto_4a

    .line 855
    nop

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_60
        :pswitch_da
        :pswitch_f6
        :pswitch_f9
        :pswitch_131
        :pswitch_135
        :pswitch_139
        :pswitch_13d
        :pswitch_15d
        :pswitch_179
        :pswitch_17c
        :pswitch_180
        :pswitch_183
        :pswitch_186
        :pswitch_19d
        :pswitch_1d5
        :pswitch_1d9
        :pswitch_1df
        :pswitch_be
        :pswitch_141
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "string"
    .parameter "offset"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v1, 0x7

    .line 957
    invoke-direct {p0, p1, p2, p3, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 958
    .local v0, index:I
    if-gez v0, :cond_b

    .line 959
    invoke-direct {p0, p1, p2, p4, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 961
    :cond_b
    return v0
.end method

.method private parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter "string"
    .parameter "offset"
    .parameter "count"
    .parameter "absolute"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 965
    if-gt p3, v4, :cond_d

    .line 966
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v0

    .line 972
    :goto_c
    return v0

    .line 968
    :cond_d
    invoke-direct {p0, p1, p2, p5, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 969
    .local v6, index:I
    if-gez v6, :cond_17

    .line 970
    invoke-direct {p0, p1, p2, p6, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    :cond_17
    move v0, v6

    .line 972
    goto :goto_c
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "offset"
    .parameter "field"
    .parameter "skew"

    .prologue
    .line 1098
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1099
    .local v0, position:Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1100
    .local v1, result:Ljava/lang/Number;
    if-nez v1, :cond_13

    .line 1101
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1104
    :goto_12
    return v2

    .line 1103
    :cond_13
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1104
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_12
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1070
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 1071
    .local v3, result:I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1072
    .local v1, index:I
    if-lez p1, :cond_11

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_11

    .line 1073
    add-int v2, v1, p1

    .line 1076
    :cond_11
    :goto_11
    if-ge v1, v2, :cond_26

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_26

    .line 1077
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1079
    :cond_26
    if-nez p1, :cond_32

    .line 1080
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1081
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1094
    :goto_31
    return-object v4

    .line 1085
    :cond_32
    :goto_32
    if-ge v1, v2, :cond_48

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    .line 1086
    add-int/lit8 v1, v1, 0x1

    .line 1087
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_32

    .line 1089
    .end local v0           #digit:I
    :cond_48
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_53

    .line 1090
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1091
    const/4 v4, 0x0

    goto :goto_31

    .line 1093
    :cond_53
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1094
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_31
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 14
    .parameter "string"
    .parameter "offset"
    .parameter "text"
    .parameter "field"

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x1

    .line 1108
    const/4 v6, -0x1

    .line 1109
    .local v6, found:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    array-length v0, p3

    if-ge v7, v0, :cond_35

    .line 1110
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1109
    :cond_f
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1113
    :cond_12
    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1115
    if-eq v6, v8, :cond_33

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v2, p3, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_f

    .line 1116
    :cond_33
    move v6, v7

    goto :goto_f

    .line 1120
    :cond_35
    if-eq v6, v8, :cond_44

    .line 1121
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1122
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1124
    :goto_43
    return v0

    :cond_44
    neg-int v0, p2

    sub-int/2addr v0, v1

    goto :goto_43
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .registers 29
    .parameter "string"
    .parameter "offset"

    .prologue
    .line 1128
    const-string v5, "GMT"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    .line 1129
    .local v13, foundGMT:Z
    if-eqz v13, :cond_13

    .line 1130
    add-int/lit8 p2, p2, 0x3

    .line 1133
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-ge v0, v1, :cond_d4

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .local v23, sign:C
    const/16 v5, 0x2b

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_2e

    const/16 v5, 0x2d

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_d4

    .line 1135
    :cond_2e
    new-instance v20, Ljava/text/ParsePosition;

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1136
    .local v20, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v22

    .line 1137
    .local v22, result:Ljava/lang/Number;
    if-nez v22, :cond_50

    .line 1138
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 1181
    .end local v20           #position:Ljava/text/ParsePosition;
    .end local v22           #result:Ljava/lang/Number;
    .end local v23           #sign:C
    :goto_4f
    return v5

    .line 1140
    .restart local v20       #position:Ljava/text/ParsePosition;
    .restart local v22       #result:Ljava/lang/Number;
    .restart local v23       #sign:C
    :cond_50
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 1141
    .local v14, hour:I
    const v5, 0x36ee80

    mul-int v21, v14, v5

    .line 1142
    .local v21, raw:I
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v16

    .line 1143
    .local v16, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_c1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_c1

    .line 1144
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v22

    .line 1146
    if-nez v22, :cond_92

    .line 1147
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_4f

    .line 1149
    :cond_92
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 1150
    .local v19, minute:I
    const v5, 0xea60

    mul-int v5, v5, v19

    add-int v21, v21, v5

    .line 1154
    .end local v19           #minute:I
    :cond_9d
    :goto_9d
    const/16 v5, 0x2d

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_a9

    .line 1155
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    .line 1157
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, ""

    move-object v0, v6

    move/from16 v1, v21

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1158
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    goto :goto_4f

    .line 1151
    :cond_c1
    const/16 v5, 0x18

    if-lt v14, v5, :cond_9d

    .line 1152
    div-int/lit8 v5, v14, 0x64

    const v6, 0x36ee80

    mul-int/2addr v5, v6

    rem-int/lit8 v6, v14, 0x64

    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int v21, v5, v6

    goto :goto_9d

    .line 1160
    .end local v14           #hour:I
    .end local v16           #index:I
    .end local v20           #position:Ljava/text/ParsePosition;
    .end local v21           #raw:I
    .end local v22           #result:Ljava/lang/Number;
    .end local v23           #sign:C
    :cond_d4
    if-eqz v13, :cond_e8

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move/from16 v5, p2

    .line 1162
    goto/16 :goto_4f

    .line 1164
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v25

    .line 1165
    .local v25, zones:[[Ljava/lang/String;
    move-object/from16 v11, v25

    .local v11, arr$:[[Ljava/lang/String;
    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_f8
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_164

    aget-object v12, v11, v15

    .line 1166
    .local v12, element:[Ljava/lang/String;
    const/16 v17, 0x1

    .local v17, j:I
    :goto_101
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_161

    .line 1167
    const/4 v6, 0x1

    aget-object v8, v12, v17

    const/4 v9, 0x0

    aget-object v5, v12, v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 1168
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1169
    .local v24, zone:Ljava/util/TimeZone;
    if-nez v24, :cond_12c

    .line 1170
    move/from16 v0, p2

    neg-int v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_4f

    .line 1172
    :cond_12c
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    .line 1173
    .restart local v21       #raw:I
    const/4 v5, 0x3

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_141

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 1174
    const v5, 0x36ee80

    add-int v21, v21, v5

    .line 1176
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, ""

    move-object v0, v6

    move/from16 v1, v21

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1177
    aget-object v5, v12, v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, p2

    goto/16 :goto_4f

    .line 1166
    .end local v21           #raw:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :cond_15e
    add-int/lit8 v17, v17, 0x1

    goto :goto_101

    .line 1165
    :cond_161
    add-int/lit8 v15, v15, 0x1

    goto :goto_f8

    .line 1181
    .end local v12           #element:[Ljava/lang/String;
    .end local v17           #j:I
    :cond_164
    move/from16 v0, p2

    neg-int v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_4f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1287
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1289
    .local v2, version:I
    if-lez v2, :cond_35

    .line 1290
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1294
    .local v0, date:Ljava/util/Date;
    :goto_1a
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1295
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1296
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1297
    return-void

    .line 1292
    .end local v0           #date:Ljava/util/Date;
    :cond_35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1a
.end method

.method private validateFormat(C)V
    .registers 6
    .parameter "format"

    .prologue
    .line 265
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 266
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_28
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .registers 10
    .parameter "template"

    .prologue
    .line 283
    const/4 v5, 0x0

    .line 284
    .local v5, quote:Z
    const/4 v2, -0x1

    .local v2, last:I
    const/4 v0, 0x0

    .line 286
    .local v0, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 287
    .local v4, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v4, :cond_53

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 289
    .local v3, next:I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_28

    .line 290
    if-lez v0, :cond_19

    .line 291
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 292
    const/4 v0, 0x0

    .line 294
    :cond_19
    if-ne v2, v3, :cond_23

    .line 295
    const/4 v2, -0x1

    .line 299
    :goto_1c
    if-nez v5, :cond_25

    const/4 v6, 0x1

    move v5, v6

    .line 287
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 297
    :cond_23
    move v2, v3

    goto :goto_1c

    .line 299
    :cond_25
    const/4 v6, 0x0

    move v5, v6

    goto :goto_20

    .line 302
    :cond_28
    if-nez v5, :cond_4a

    if-eq v2, v3, :cond_3c

    const/16 v6, 0x61

    if-lt v3, v6, :cond_34

    const/16 v6, 0x7a

    if-le v3, v6, :cond_3c

    :cond_34
    const/16 v6, 0x41

    if-lt v3, v6, :cond_4a

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_4a

    .line 304
    :cond_3c
    if-ne v2, v3, :cond_41

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 307
    :cond_41
    if-lez v0, :cond_47

    .line 308
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 310
    :cond_47
    move v2, v3

    .line 311
    const/4 v0, 0x1

    goto :goto_20

    .line 314
    :cond_4a
    if-lez v0, :cond_51

    .line 315
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 316
    const/4 v0, 0x0

    .line 318
    :cond_51
    const/4 v2, -0x1

    goto :goto_20

    .line 321
    .end local v3           #next:I
    :cond_53
    if-lez v0, :cond_59

    .line 322
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 325
    :cond_59
    if-eqz v5, :cond_63

    .line 326
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 328
    :cond_63
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1278
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1279
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1280
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1281
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1282
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1283
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .parameter "template"

    .prologue
    .line 391
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 407
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 419
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 420
    .local v0, clone:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 421
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 422
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 444
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 451
    :goto_5
    return v2

    .line 447
    :cond_6
    instance-of v2, p1, Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_c

    move v2, v4

    .line 448
    goto :goto_5

    .line 450
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v1, v0

    .line 451
    .local v1, simple:Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v1, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v5

    goto :goto_5

    :cond_2c
    move v2, v4

    goto :goto_5
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "date"
    .parameter "buffer"
    .parameter "fieldPos"

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .parameter "object"

    .prologue
    .line 472
    if-nez p1, :cond_8

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 475
    :cond_8
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_13

    .line 476
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 479
    :goto_12
    return-object v0

    .line 478
    .restart local p1
    :cond_13
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_27

    .line 479
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_12

    .line 481
    .restart local p1
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DateFormatSymbols;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 840
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .parameter "string"
    .parameter "position"

    .prologue
    .line 999
    const/4 v9, 0x0

    .line 1000
    .local v9, quote:Z
    const/4 v4, -0x1

    .local v4, last:I
    const/4 v0, 0x0

    .local v0, count:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1001
    .local v7, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1002
    .local v5, length:I
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1003
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1004
    .local v10, zone:Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1005
    .local v8, patternLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v8, :cond_ac

    .line 1006
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1007
    .local v6, next:I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_5b

    .line 1008
    if-lez v0, :cond_3b

    .line 1009
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_3a

    .line 1010
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    .line 1066
    .end local v6           #next:I
    :goto_39
    return-object v11

    .line 1012
    .restart local v6       #next:I
    :cond_3a
    const/4 v0, 0x0

    .line 1014
    :cond_3b
    if-ne v4, v6, :cond_56

    .line 1015
    if-ge v7, v5, :cond_47

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_4c

    .line 1016
    :cond_47
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1018
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 1019
    const/4 v4, -0x1

    .line 1023
    :goto_4f
    if-nez v9, :cond_58

    const/4 v11, 0x1

    move v9, v11

    .line 1005
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1021
    :cond_56
    move v4, v6

    goto :goto_4f

    .line 1023
    :cond_58
    const/4 v11, 0x0

    move v9, v11

    goto :goto_53

    .line 1026
    :cond_5b
    if-nez v9, :cond_89

    if-eq v4, v6, :cond_6f

    const/16 v11, 0x61

    if-lt v6, v11, :cond_67

    const/16 v11, 0x7a

    if-le v6, v11, :cond_6f

    :cond_67
    const/16 v11, 0x41

    if-lt v6, v11, :cond_89

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_89

    .line 1028
    :cond_6f
    if-ne v4, v6, :cond_74

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1031
    :cond_74
    if-lez v0, :cond_86

    .line 1032
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_86

    .line 1033
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1036
    :cond_86
    move v4, v6

    .line 1037
    const/4 v0, 0x1

    goto :goto_53

    .line 1040
    :cond_89
    if-lez v0, :cond_9b

    .line 1041
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_9a

    .line 1042
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1044
    :cond_9a
    const/4 v0, 0x0

    .line 1046
    :cond_9b
    const/4 v4, -0x1

    .line 1047
    if-ge v7, v5, :cond_a4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_a9

    .line 1048
    :cond_a4
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1050
    :cond_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 1053
    .end local v6           #next:I
    :cond_ac
    if-lez v0, :cond_be

    .line 1054
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_be

    .line 1055
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto/16 :goto_39

    .line 1060
    :cond_be
    :try_start_be
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c3} :catch_cf

    move-result-object v1

    .line 1064
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1065
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v11, v1

    .line 1066
    goto/16 :goto_39

    .line 1061
    .end local v1           #date:Ljava/util/Date;
    :catch_cf
    move-exception v11

    move-object v2, v11

    .line 1062
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto/16 :goto_39
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 1207
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1208
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1209
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1211
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1220
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1221
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1230
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1267
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
