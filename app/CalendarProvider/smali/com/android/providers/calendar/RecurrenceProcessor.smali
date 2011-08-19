.class public Lcom/android/providers/calendar/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I


# instance fields
.field private mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1109
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1111
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1109
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 1111
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 33
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 34
    new-instance v0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    .line 40
    return-void
.end method

.method private static filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I
    .locals 6
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 200
    iget v2, p0, Landroid/pim/EventRecurrence;->freq:I

    .line 202
    .local v2, freq:I
    const/4 v0, 0x6

    if-lt v0, v2, :cond_0

    .line 204
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget v3, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([III)Z

    move-result v0

    .line 207
    .local v0, found:Z
    if-nez v0, :cond_0

    .line 208
    const/4 p0, 0x1

    .line 288
    .end local v0           #found:Z
    .end local v2           #freq:I
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 212
    .restart local v2       #freq:I
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x5

    if-lt v0, v2, :cond_1

    .line 215
    iget v0, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 219
    .restart local v0       #found:Z
    if-nez v0, :cond_1

    .line 220
    const/4 p0, 0x2

    goto :goto_0

    .line 224
    .end local v0           #found:Z
    :cond_1
    const/4 v0, 0x4

    if-lt v0, v2, :cond_4

    .line 226
    iget v0, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    if-lez v0, :cond_2

    .line 227
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget v3, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 229
    .restart local v0       #found:Z
    if-nez v0, :cond_2

    .line 230
    const/4 p0, 0x3

    goto :goto_0

    .line 234
    .end local v0           #found:Z
    :cond_2
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-lez v0, :cond_3

    .line 235
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 238
    .restart local v0       #found:Z
    if-nez v0, :cond_3

    .line 239
    const/4 p0, 0x4

    goto :goto_0

    .line 245
    .end local v0           #found:Z
    :cond_3
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_4

    .line 246
    iget-object v1, p0, Landroid/pim/EventRecurrence;->byday:[I

    .line 247
    .local v1, a:[I
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 248
    .local v0, N:I
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v4

    .line 249
    .local v4, v:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 250
    aget v5, v1, v3

    if-ne v5, v4, :cond_5

    .line 257
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_4
    const/4 v0, 0x3

    if-lt v0, v2, :cond_7

    .line 259
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byhour:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget v3, p1, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 262
    .local v0, found:Z
    if-nez v0, :cond_7

    .line 263
    const/4 p0, 0x6

    goto :goto_0

    .line 249
    .local v0, N:I
    .restart local v1       #a:[I
    .restart local v3       #i:I
    .restart local v4       #v:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_6
    const/4 p0, 0x5

    goto :goto_0

    .line 266
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_7
    const/4 v0, 0x2

    if-lt v0, v2, :cond_8

    .line 268
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byminute:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget v3, p1, Landroid/text/format/Time;->minute:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 271
    .local v0, found:Z
    if-nez v0, :cond_8

    .line 272
    const/4 p0, 0x7

    goto/16 :goto_0

    .line 275
    .end local v0           #found:Z
    :cond_8
    const/4 v0, 0x1

    if-lt v0, v2, :cond_9

    .line 277
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    iget p0, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    .end local p0
    iget v1, p1, Landroid/text/format/Time;->second:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    .end local v2           #freq:I
    move-result p1

    .end local p1
    invoke-static {v0, p0, v1, p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result p0

    .line 280
    .local p0, found:Z
    if-nez p0, :cond_9

    .line 281
    const/16 p0, 0x8

    goto/16 :goto_0

    .line 288
    .end local p0           #found:Z
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 1096
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2
    .parameter "a"
    .parameter "N"
    .parameter "v"

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 156
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 157
    const/4 v1, 0x1

    .line 160
    :goto_1
    return v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "N"
    .parameter "v"
    .parameter "max"

    .prologue
    const/4 v2, 0x1

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 174
    aget v1, p0, v0

    .line 175
    .local v1, w:I
    if-lez v1, :cond_1

    .line 176
    if-ne v1, p2, :cond_2

    .line 186
    .end local v1           #w:I
    :cond_0
    :goto_1
    return v2

    .line 180
    .restart local v1       #w:I
    :cond_1
    add-int/2addr p3, v1

    .line 181
    if-eq p3, p2, :cond_0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1           #w:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v2, 0x1c

    .line 1122
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v1, p1

    .line 1123
    .local v0, n:I
    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1126
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1d

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4
    .parameter "normalized"

    .prologue
    .line 1177
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 2
    .parameter "date"
    .parameter "val"

    .prologue
    .line 1183
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1184
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1185
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1186
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1187
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1188
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1189
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 8
    .parameter "date"

    .prologue
    .line 1013
    iget v5, p0, Landroid/text/format/Time;->second:I

    .line 1014
    .local v5, second:I
    iget v2, p0, Landroid/text/format/Time;->minute:I

    .line 1015
    .local v2, minute:I
    iget v1, p0, Landroid/text/format/Time;->hour:I

    .line 1016
    .local v1, hour:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 1017
    .local v4, monthDay:I
    iget v3, p0, Landroid/text/format/Time;->month:I

    .line 1018
    .local v3, month:I
    iget v6, p0, Landroid/text/format/Time;->year:I

    .line 1020
    .local v6, year:I
    if-gez v5, :cond_0

    const/16 v0, 0x3b

    sub-int v0, v5, v0

    :goto_0
    div-int/lit8 v0, v0, 0x3c

    .line 1021
    .local v0, addMinutes:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v5, v7

    .line 1022
    add-int/2addr v2, v0

    .line 1023
    if-gez v2, :cond_1

    const/16 v0, 0x3b

    sub-int v0, v2, v0

    .end local v0           #addMinutes:I
    :goto_1
    div-int/lit8 v0, v0, 0x3c

    .line 1024
    .local v0, addHours:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v2, v7

    .line 1025
    add-int/2addr v1, v0

    .line 1026
    if-gez v1, :cond_2

    const/16 v0, 0x17

    sub-int v0, v1, v0

    .end local v0           #addHours:I
    :goto_2
    div-int/lit8 v0, v0, 0x18

    .line 1027
    .local v0, addDays:I
    mul-int/lit8 v7, v0, 0x18

    sub-int/2addr v1, v7

    .line 1028
    add-int/2addr v0, v4

    .end local v4           #monthDay:I
    .local v0, monthDay:I
    move v4, v0

    .line 1033
    .end local v0           #monthDay:I
    .restart local v4       #monthDay:I
    :goto_3
    if-gtz v4, :cond_4

    .line 1041
    const/4 v0, 0x1

    if-le v3, v0, :cond_3

    invoke-static {v6}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    .line 1042
    .local v0, days:I
    :goto_4
    add-int/2addr v0, v4

    .line 1043
    .end local v4           #monthDay:I
    .local v0, monthDay:I
    add-int/lit8 v4, v6, -0x1

    .end local v6           #year:I
    .local v4, year:I
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    move v4, v0

    .line 1044
    .end local v0           #monthDay:I
    .local v4, monthDay:I
    goto :goto_3

    :cond_0
    move v0, v5

    .line 1020
    goto :goto_0

    .local v0, addMinutes:I
    :cond_1
    move v0, v2

    .line 1023
    goto :goto_1

    .local v0, addHours:I
    :cond_2
    move v0, v1

    .line 1026
    goto :goto_2

    .line 1041
    .end local v0           #addHours:I
    :cond_3
    const/4 v0, 0x1

    sub-int v0, v6, v0

    invoke-static {v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    goto :goto_4

    .line 1046
    :cond_4
    if-gez v3, :cond_5

    .line 1047
    add-int/lit8 v0, v3, 0x1

    div-int/lit8 v0, v0, 0xc

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .line 1048
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1049
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .line 1059
    .end local v6           #year:I
    .local v4, year:I
    :goto_5
    if-nez v0, :cond_8

    .line 1060
    invoke-static {v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v6

    .line 1061
    .local v6, yearLength:I
    if-le v3, v6, :cond_8

    .line 1062
    add-int/lit8 v4, v4, 0x1

    .line 1063
    sub-int/2addr v3, v6

    move v6, v4

    .line 1066
    .end local v4           #year:I
    .local v6, year:I
    :goto_6
    invoke-static {v6, v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->monthLength(II)I

    move-result v4

    .line 1067
    .local v4, monthLength:I
    if-le v3, v4, :cond_6

    .line 1068
    sub-int/2addr v3, v4

    .line 1069
    add-int/lit8 v0, v0, 0x1

    .line 1070
    const/16 v4, 0xc

    if-lt v0, v4, :cond_7

    .line 1071
    .end local v4           #monthLength:I
    add-int/lit8 v0, v0, -0xc

    .line 1072
    add-int/lit8 v4, v6, 0x1

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    .line 1050
    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    .restart local v6       #year:I
    :cond_5
    const/16 v0, 0xc

    if-lt v3, v0, :cond_9

    .line 1051
    div-int/lit8 v0, v3, 0xc

    .line 1052
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1053
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    .line 1079
    .local v4, monthLength:I
    .restart local v6       #year:I
    :cond_6
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 1080
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 1081
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 1082
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 1083
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1084
    iput v6, p0, Landroid/text/format/Time;->year:I

    .line 1085
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->weekDay(III)I

    move-result v1

    .end local v1           #hour:I
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 1086
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearDay(III)I

    move-result v0

    .end local v0           #month:I
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 1087
    return-void

    .end local v4           #monthLength:I
    .restart local v0       #month:I
    .restart local v1       #hour:I
    :cond_7
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    :cond_8
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    goto :goto_6

    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    :cond_9
    move v0, v3

    .end local v3           #month:I
    .restart local v0       #month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5
.end method

.method private static useBYX(III)Z
    .locals 1
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 313
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1139
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1140
    add-int/lit8 p1, p1, 0xc

    .line 1141
    add-int/lit8 p0, p0, -0x1

    .line 1143
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1155
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 1156
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    add-int/lit8 v0, v0, 0x1

    .line 1159
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1
    .parameter "year"

    .prologue
    .line 1106
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 58
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Landroid/pim/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 639
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 640
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 641
    .local v18, dtstartDateValue:J
    const/4 v14, 0x0

    .line 649
    .local v14, count:I
    if-eqz p7, :cond_0

    cmp-long v55, v18, p3

    if-ltz v55, :cond_0

    cmp-long v55, v18, p5

    if-gez v55, :cond_0

    .line 651
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/lit8 v14, v14, 0x1

    .line 655
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 656
    .local v31, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v45, v0

    .line 657
    .local v45, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    .line 658
    .local v42, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    .line 659
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 663
    .local v16, days:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->setRecurrence(Landroid/pim/EventRecurrence;)V

    .line 664
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 665
    new-instance v55, Lcom/android/providers/calendar/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 989
    :catch_0
    move-exception v55

    move-object/from16 v20, v55

    .line 990
    .local v20, e:Lcom/android/providers/calendar/DateException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    throw v20

    .line 671
    .end local v20           #e:Lcom/android/providers/calendar/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v26, v0

    .line 672
    .local v26, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v25, v0

    .line 673
    .local v25, freq:I
    packed-switch v25, :pswitch_data_0

    .line 701
    new-instance v55, Lcom/android/providers/calendar/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 994
    .end local v25           #freq:I
    .end local v26           #freqAmount:I
    :catch_1
    move-exception v55

    move-object/from16 v44, v55

    .line 995
    .local v44, t:Ljava/lang/RuntimeException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    throw v44

    .line 676
    .end local v44           #t:Ljava/lang/RuntimeException;
    .restart local v25       #freq:I
    .restart local v26       #freqAmount:I
    :pswitch_0
    const/16 v27, 0x1

    .line 703
    .local v27, freqField:I
    :cond_2
    :goto_0
    if-gtz v26, :cond_3

    .line 704
    const/16 v26, 0x1

    .line 707
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthCount:I

    move v12, v0

    .line 708
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 709
    .local v52, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_7

    :cond_4
    const/16 v55, 0x1

    move/from16 v49, v55

    .line 711
    .local v49, useDays:Z
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byhourCount:I

    move v10, v0

    .line 712
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 713
    .local v50, usebyhour:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byminuteCount:I

    move v11, v0

    .line 714
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 715
    .local v51, usebyminute:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bysecondCount:I

    move v13, v0

    .line 716
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 719
    .local v53, usebysecond:Z
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 720
    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    .line 721
    if-eqz v49, :cond_5

    .line 727
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 732
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_8

    .line 734
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 738
    .local v48, untilStr:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    .line 739
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 742
    :cond_6
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 747
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 748
    invoke-static/range {v45 .. v45}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v46

    .line 753
    .end local v48           #untilStr:Ljava/lang/String;
    .local v46, untilDateValue:J
    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 754
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 763
    const/16 v21, 0x0

    .line 764
    .local v21, eventEnded:Z
    const/16 v22, 0x0

    .local v22, failsafe:I
    move/from16 v23, v22

    .line 767
    .end local v22           #failsafe:I
    .local v23, failsafe:I
    :goto_3
    const/16 v39, 0x0

    .line 768
    .local v39, monthIndex:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    const/16 v55, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v55

    if-le v0, v1, :cond_9

    .line 769
    new-instance v55, Lcom/android/providers/calendar/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Recurrence processing stuck: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 679
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v21           #eventEnded:Z
    .end local v22           #failsafe:I
    .end local v27           #freqField:I
    .end local v39           #monthIndex:I
    .end local v46           #untilDateValue:J
    .end local v49           #useDays:Z
    .end local v50           #usebyhour:Z
    .end local v51           #usebyminute:Z
    .end local v52           #usebymonth:Z
    .end local v53           #usebysecond:Z
    :pswitch_1
    const/16 v27, 0x2

    .line 680
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 682
    .end local v27           #freqField:I
    :pswitch_2
    const/16 v27, 0x3

    .line 683
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 685
    .end local v27           #freqField:I
    :pswitch_3
    const/16 v27, 0x4

    .line 686
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 688
    .end local v27           #freqField:I
    :pswitch_4
    const/16 v27, 0x4

    .line 689
    .restart local v27       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v26, v55, 0x7

    .line 690
    if-gtz v26, :cond_2

    .line 691
    const/16 v26, 0x7

    goto/16 :goto_0

    .line 695
    .end local v27           #freqField:I
    :pswitch_5
    const/16 v27, 0x5

    .line 696
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 698
    .end local v27           #freqField:I
    :pswitch_6
    const/16 v27, 0x6

    .line 699
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 709
    .restart local v12       #bymonthCount:I
    .restart local v52       #usebymonth:Z
    :cond_7
    const/16 v55, 0x0

    move/from16 v49, v55

    goto/16 :goto_1

    .line 750
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v49       #useDays:Z
    .restart local v50       #usebyhour:Z
    .restart local v51       #usebyminute:Z
    .restart local v53       #usebysecond:Z
    :cond_8
    const-wide v46, 0x7fffffffffffffffL

    .restart local v46       #untilDateValue:J
    goto :goto_2

    .line 772
    .restart local v21       #eventEnded:Z
    .restart local v22       #failsafe:I
    .restart local v39       #monthIndex:I
    :cond_9
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 774
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 775
    .local v9, iteratorYear:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v35, v55, 0x1

    .line 776
    .local v35, iteratorMonth:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    .line 777
    .local v32, iteratorDay:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v33, v0

    .line 778
    .local v33, iteratorHour:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    .line 779
    .local v34, iteratorMinute:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v36, v0

    .line 782
    .local v36, iteratorSecond:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 787
    :cond_a
    if-eqz v52, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v55, v55, v39

    move/from16 v8, v55

    .line 790
    .local v8, month:I
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 793
    const/4 v15, 0x1

    .line 794
    .local v15, dayIndex:I
    const/16 v37, 0x0

    .line 799
    .local v37, lastDayToExamine:I
    if-eqz v49, :cond_b

    .line 803
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-ne v0, v1, :cond_f

    .line 804
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v17, v0

    .line 805
    .local v17, dow:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v17

    .line 806
    add-int/lit8 v37, v15, 0x6

    .line 818
    .end local v17           #dow:I
    :cond_b
    :goto_5
    if-eqz v49, :cond_17

    .line 819
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_10

    .line 820
    add-int/lit8 v15, v15, 0x1

    .line 934
    :goto_6
    if-eqz v49, :cond_c

    move v0, v15

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    .line 935
    :cond_c
    add-int/lit8 v39, v39, 0x1

    .line 936
    if-eqz v52, :cond_d

    move/from16 v0, v39

    move v1, v12

    if-lt v0, v1, :cond_a

    .line 942
    :cond_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    .line 943
    .local v41, oldDay:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 944
    const/16 v40, 0x1

    .line 946
    .local v40, n:I
    :goto_7
    mul-int v54, v26, v40

    .line 947
    .local v54, value:I
    packed-switch v27, :pswitch_data_1

    .line 973
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v37           #lastDayToExamine:I
    .end local v40           #n:I
    .end local v41           #oldDay:I
    .end local v54           #value:I
    :cond_e
    move/from16 v8, v35

    .line 787
    goto :goto_4

    .line 808
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v37       #lastDayToExamine:I
    :cond_f
    const/16 v55, 0x4

    move-object v0, v3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v37

    goto :goto_5

    .line 823
    :cond_10
    move v7, v15

    .line 831
    .local v7, day:I
    :goto_8
    const/16 v30, 0x0

    .line 833
    .local v30, hourIndex:I
    :cond_11
    if-eqz v50, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v55, v55, v30

    move/from16 v6, v55

    .line 839
    .local v6, hour:I
    :goto_9
    const/16 v38, 0x0

    .line 841
    .local v38, minuteIndex:I
    :cond_12
    if-eqz v51, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v55, v55, v38

    move/from16 v5, v55

    .line 847
    .local v5, minute:I
    :goto_a
    const/16 v43, 0x0

    .line 849
    .local v43, secondIndex:I
    :cond_13
    if-eqz v53, :cond_1a

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v55, v55, v43

    move/from16 v4, v55

    .line 857
    .local v4, second:I
    :goto_b
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 858
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 860
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 864
    .local v28, genDateValue:J
    cmp-long v55, v28, v18

    if-ltz v55, :cond_1d

    .line 866
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor;->filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I

    move-result v24

    .line 867
    .local v24, filtered:I
    if-nez v24, :cond_1d

    .line 883
    cmp-long v55, v18, v28

    if-nez v55, :cond_14

    if-eqz p7, :cond_14

    cmp-long v55, v18, p3

    if-ltz v55, :cond_14

    cmp-long v55, v18, p5

    if-ltz v55, :cond_15

    .line 887
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 891
    :cond_15
    cmp-long v55, v28, v46

    if-lez v55, :cond_1b

    .line 999
    :cond_16
    return-void

    .line 826
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    :cond_17
    move/from16 v7, v32

    .restart local v7       #day:I
    goto :goto_8

    .restart local v30       #hourIndex:I
    :cond_18
    move/from16 v6, v33

    .line 833
    goto :goto_9

    .restart local v6       #hour:I
    .restart local v38       #minuteIndex:I
    :cond_19
    move/from16 v5, v34

    .line 841
    goto :goto_a

    .restart local v5       #minute:I
    .restart local v43       #secondIndex:I
    :cond_1a
    move/from16 v4, v36

    .line 849
    goto :goto_b

    .line 901
    .restart local v4       #second:I
    .restart local v24       #filtered:I
    .restart local v28       #genDateValue:J
    :cond_1b
    cmp-long v55, v28, p5

    if-gez v55, :cond_16

    .line 910
    cmp-long v55, v28, p3

    if-ltz v55, :cond_1c

    .line 914
    if-eqz p7, :cond_21

    .line 915
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_1c
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_1d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    move v1, v14

    if-eq v0, v1, :cond_16

    .line 927
    .end local v24           #filtered:I
    :cond_1d
    add-int/lit8 v43, v43, 0x1

    .line 928
    if-eqz v53, :cond_1e

    move/from16 v0, v43

    move v1, v13

    if-lt v0, v1, :cond_13

    .line 929
    :cond_1e
    add-int/lit8 v38, v38, 0x1

    .line 930
    if-eqz v51, :cond_1f

    move/from16 v0, v38

    move v1, v11

    if-lt v0, v1, :cond_12

    .line 931
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    .line 932
    if-eqz v50, :cond_20

    move/from16 v0, v30

    move v1, v10

    if-lt v0, v1, :cond_11

    .line 933
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 917
    .restart local v24       #filtered:I
    :cond_21
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 949
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    .restart local v40       #n:I
    .restart local v41       #oldDay:I
    .restart local v54       #value:I
    :pswitch_7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 976
    :goto_d
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 977
    const/16 v55, 0x6

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    :cond_22
    move/from16 v23, v22

    .line 986
    .end local v22           #failsafe:I
    .restart local v23       #failsafe:I
    goto/16 :goto_3

    .line 952
    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    :pswitch_8
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    .line 955
    :pswitch_9
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    .line 958
    :pswitch_a
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 961
    :pswitch_b
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    .line 964
    :pswitch_c
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    .line 967
    :pswitch_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 970
    :pswitch_e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 980
    :cond_23
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v41

    if-eq v0, v1, :cond_22

    .line 983
    add-int/lit8 v40, v40, 0x1

    .line 984
    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 947
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J
    .locals 34
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 540
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 541
    .local v32, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 552
    .local v6, rangeStartDateValue:J
    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-eqz v3, :cond_0

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 559
    .local v8, rangeEndDateValue:J
    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 561
    .local v11, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 562
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    aget-object v5, v21, v29

    .line 563
    .local v5, rrule:Landroid/pim/EventRecurrence;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 562
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 556
    .end local v5           #rrule:Landroid/pim/EventRecurrence;
    .end local v8           #rangeEndDateValue:J
    .end local v11           #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    .restart local v8       #rangeEndDateValue:J
    goto :goto_0

    .line 567
    .restart local v11       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 568
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    aget-wide v23, v21, v29

    .line 571
    .local v23, dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 573
    .local v25, dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 576
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 577
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    aget-object v14, v21, v29

    .line 578
    .local v14, exrule:Landroid/pim/EventRecurrence;
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 577
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 582
    .end local v14           #exrule:Landroid/pim/EventRecurrence;
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 583
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    aget-wide v23, v21, v29

    .line 586
    .restart local v23       #dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 588
    .restart local v25       #dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 591
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_4
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 594
    const/4 v3, 0x0

    new-array v3, v3, [J

    .line 608
    :goto_5
    return-object v3

    .line 601
    :cond_5
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v30

    .line 602
    .local v30, len:I
    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 603
    .local v22, dates:[J
    const/16 v27, 0x0

    .line 604
    .local v27, i:I
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 605
    .local v33, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/calendar/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 606
    add-int/lit8 v28, v27, 0x1

    .end local v27           #i:I
    .local v28, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    aput-wide v3, v22, v27

    move/from16 v27, v28

    .end local v28           #i:I
    .restart local v27       #i:I
    goto :goto_6

    .end local v33           #val:Ljava/lang/Long;
    :cond_6
    move-object/from16 v3, v22

    .line 608
    goto :goto_5
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J
    .locals 2
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/providers/calendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J
    .locals 21
    .parameter "dtstart"
    .parameter "maxtime"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v15, -0x1

    .line 87
    .local v15, lastTime:J
    const/4 v13, 0x0

    .line 91
    .local v13, hasCount:Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 92
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v9, v0

    .local v9, arr$:[Landroid/pim/EventRecurrence;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v18, v9, v14

    .line 93
    .local v18, rrule:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move v2, v0

    if-eqz v2, :cond_1

    .line 94
    const/4 v13, 0x1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 95
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    .line 99
    .local v19, untilTime:J
    cmp-long v2, v19, v15

    if-lez v2, :cond_0

    .line 100
    move-wide/from16 v15, v19

    goto :goto_1

    .line 104
    .end local v18           #rrule:Landroid/pim/EventRecurrence;
    .end local v19           #untilTime:J
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_4

    .line 105
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .local v9, arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_2
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-wide v11, v9, v14

    .line 106
    .local v11, dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_3

    .line 107
    move-wide v15, v11

    .line 105
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 114
    .end local v9           #arr$:[J
    .end local v11           #dt:J
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_8

    if-nez v13, :cond_8

    move-wide v2, v15

    .line 145
    .end local v14           #i$:I
    .end local v17           #len$:I
    :goto_3
    return-wide v2

    .line 117
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-nez v2, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v2, v0

    if-nez v2, :cond_8

    .line 120
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .restart local v9       #arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    aget-wide v11, v9, v14

    .line 121
    .restart local v11       #dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_6

    .line 122
    move-wide v15, v11

    .line 120
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .end local v11           #dt:J
    :cond_7
    move-wide v2, v15

    .line 125
    goto :goto_3

    .line 130
    .end local v9           #arr$:[J
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_8
    if-nez v13, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-nez v2, :cond_9

    if-eqz p2, :cond_c

    .line 133
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    if-eqz p2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    move-wide v7, v2

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v10

    .line 140
    .local v10, dates:[J
    array-length v2, v10

    if-nez v2, :cond_b

    .line 141
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 133
    .end local v10           #dates:[J
    :cond_a
    const-wide/16 v2, -0x1

    move-wide v7, v2

    goto :goto_5

    .line 143
    .restart local v10       #dates:[J
    :cond_b
    array-length v2, v10

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v2, v10, v2

    goto :goto_3

    .line 145
    .end local v10           #dates:[J
    :cond_c
    const-wide/16 v2, -0x1

    goto :goto_3
.end method
