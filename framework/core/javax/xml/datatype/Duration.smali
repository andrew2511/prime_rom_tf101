.class public abstract Ljavax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .registers 3
    .parameter "cal"

    .prologue
    .line 982
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .registers 4
    .parameter "field"

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .line 414
    .local v0, n:Ljava/lang/Number;
    if-eqz v0, :cond_b

    .line 415
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 417
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .registers 9
    .parameter "bd"

    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, intString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 944
    .local v4, scale:I
    if-nez v4, :cond_10

    move-object v5, v3

    .line 966
    :goto_f
    return-object v5

    .line 950
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .line 951
    .local v2, insertionPoint:I
    if-nez v2, :cond_2c

    .line 952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    .line 954
    :cond_2c
    if-lez v2, :cond_3d

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 966
    :goto_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    .line 959
    .end local v0           #buf:Ljava/lang/StringBuilder;
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    sub-int/2addr v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 960
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4f
    neg-int v5, v2

    if-ge v1, v5, :cond_5a

    .line 962
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 964
    :cond_5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38
.end method


# virtual methods
.method public abstract add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract addTo(Ljava/util/Calendar;)V
.end method

.method public addTo(Ljava/util/Date;)V
    .registers 6
    .parameter "date"

    .prologue
    .line 554
    if-nez p1, :cond_29

    .line 555
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#addTo(Date date) with date == null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_29
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 563
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 564
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 565
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 566
    return-void
.end method

.method public abstract compare(Ljavax/xml/datatype/Duration;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "duration"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    if-ne p1, p0, :cond_6

    move v0, v2

    .line 864
    .end local p1
    :goto_5
    return v0

    .line 861
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljavax/xml/datatype/Duration;

    if-eqz v0, :cond_16

    .line 862
    check-cast p1, Ljavax/xml/datatype/Duration;

    .end local p1
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_5

    :cond_14
    move v0, v1

    goto :goto_5

    .restart local p1
    :cond_16
    move v0, v1

    .line 864
    goto :goto_5
.end method

.method public getDays()I
    .registers 2

    .prologue
    .line 256
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public getHours()I
    .registers 2

    .prologue
    .line 270
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 284
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .registers 2

    .prologue
    .line 243
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 2

    .prologue
    .line 299
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getSign()I
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .registers 7
    .parameter "startInstant"

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 334
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 335
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-static {p1}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .registers 7
    .parameter "startInstant"

    .prologue
    .line 371
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 372
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 373
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 374
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .registers 10

    .prologue
    .line 158
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v5

    .line 159
    .local v5, yearSet:Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v3

    .line 160
    .local v3, monthSet:Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v0

    .line 161
    .local v0, daySet:Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v1

    .line 162
    .local v1, hourSet:Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v2

    .line 163
    .local v2, minuteSet:Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v4

    .line 166
    .local v4, secondSet:Z
    if-eqz v5, :cond_33

    if-eqz v3, :cond_33

    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    if-eqz v2, :cond_33

    if-eqz v4, :cond_33

    .line 172
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    .line 192
    :goto_32
    return-object v6

    .line 176
    :cond_33
    if-nez v5, :cond_42

    if-nez v3, :cond_42

    if-eqz v0, :cond_42

    if-eqz v1, :cond_42

    if-eqz v2, :cond_42

    if-eqz v4, :cond_42

    .line 182
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    goto :goto_32

    .line 186
    :cond_42
    if-eqz v5, :cond_51

    if-eqz v3, :cond_51

    if-nez v0, :cond_51

    if-nez v1, :cond_51

    if-nez v2, :cond_51

    if-nez v4, :cond_51

    .line 192
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    goto :goto_32

    .line 196
    :cond_51
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " month set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " day set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hour set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minute set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " second set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getYears()I
    .registers 2

    .prologue
    .line 230
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isLongerThan(Ljavax/xml/datatype/Duration;)Z
    .registers 4
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    .line 795
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public abstract isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public isShorterThan(Ljavax/xml/datatype/Duration;)Z
    .registers 4
    .parameter "duration"

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .registers 4
    .parameter "factor"

    .prologue
    .line 638
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract negate()Ljavax/xml/datatype/Duration;
.end method

.method public abstract normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .registers 3
    .parameter "rhs"

    .prologue
    .line 618
    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x4d

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    if-gez v7, :cond_12

    .line 892
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    :cond_12
    const/16 v7, 0x50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 897
    .local v6, years:Ljava/math/BigInteger;
    if-eqz v6, :cond_2a

    .line 898
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x59

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    :cond_2a
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    .line 902
    .local v4, months:Ljava/math/BigInteger;
    if-eqz v4, :cond_3b

    .line 903
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    :cond_3b
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 907
    .local v1, days:Ljava/math/BigInteger;
    if-eqz v1, :cond_4e

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x44

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    :cond_4e
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 912
    .local v2, hours:Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 913
    .local v3, minutes:Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 914
    .local v5, seconds:Ljava/math/BigDecimal;
    if-nez v2, :cond_6c

    if-nez v3, :cond_6c

    if-eqz v5, :cond_94

    .line 915
    :cond_6c
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 916
    if-eqz v2, :cond_7c

    .line 917
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_7c
    if-eqz v3, :cond_85

    .line 920
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 922
    :cond_85
    if-eqz v5, :cond_94

    .line 923
    invoke-direct {p0, v5}, Ljavax/xml/datatype/Duration;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x53

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
