.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_a4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_c0

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_dc

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_f8

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 210
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 236
    new-array v0, v3, [I

    fill-array-data v0, :array_140

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 39
    nop

    :array_5c
    .array-data 0x4
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
    .end array-data

    .line 48
    :array_6e
    .array-data 0x4
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
    .end array-data

    .line 57
    :array_80
    .array-data 0x4
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
    .end array-data

    .line 66
    :array_92
    .array-data 0x4
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
        0x67t 0x0t 0x4t 0x1t
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
        0x6at 0x0t 0x4t 0x1t
    .end array-data

    .line 75
    :array_a4
    .array-data 0x4
        0x1ft 0x0t 0x4t 0x1t
        0x20t 0x0t 0x4t 0x1t
        0x21t 0x0t 0x4t 0x1t
        0x22t 0x0t 0x4t 0x1t
        0x23t 0x0t 0x4t 0x1t
        0x24t 0x0t 0x4t 0x1t
        0x25t 0x0t 0x4t 0x1t
        0x26t 0x0t 0x4t 0x1t
        0x27t 0x0t 0x4t 0x1t
        0x28t 0x0t 0x4t 0x1t
        0x29t 0x0t 0x4t 0x1t
        0x2at 0x0t 0x4t 0x1t
    .end array-data

    .line 89
    :array_c0
    .array-data 0x4
        0x2bt 0x0t 0x4t 0x1t
        0x2ct 0x0t 0x4t 0x1t
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
        0x33t 0x0t 0x4t 0x1t
        0x34t 0x0t 0x4t 0x1t
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
    .end array-data

    .line 103
    :array_dc
    .array-data 0x4
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
    .end array-data

    .line 117
    :array_f8
    .array-data 0x4
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
    .end array-data

    .line 131
    :array_114
    .array-data 0x4
        0x6bt 0x0t 0x4t 0x1t
        0x6ct 0x0t 0x4t 0x1t
    .end array-data

    .line 210
    :array_11c
    .array-data 0x4
        0x94t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0xa1t 0x0t 0x4t 0x1t
        0xa3t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9ct 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x8bt 0x0t 0x4t 0x1t
        0x8ct 0x0t 0x4t 0x1t
        0x8dt 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
    .end array-data

    .line 236
    :array_140
    .array-data 0x4
        0x9ft 0x0t 0x4t 0x1t
        0xa0t 0x0t 0x4t 0x1t
        0xa2t 0x0t 0x4t 0x1t
        0x9et 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x9dt 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x8bt 0x0t 0x4t 0x1t
        0x8ct 0x0t 0x4t 0x1t
        0x8dt 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 4
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 964
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 965
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 966
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 989
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 990
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .registers 15
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1013
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .registers 35
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 1174
    .local v16, res:Landroid/content/res/Resources;
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_171

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1175
    .local v17, showTime:Z
    :goto_b
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_176

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 1176
    .local v18, showWeekDay:Z
    :goto_12
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_17b

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 1177
    .local v19, showYear:Z
    :goto_19
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_180

    const/4 v4, 0x1

    move v14, v4

    .line 1178
    .local v14, noYear:Z
    :goto_1f
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v4, v0

    if-eqz v4, :cond_184

    const/4 v4, 0x1

    move v7, v4

    .line 1179
    .local v7, useUTC:Z
    :goto_28
    const v4, 0x88000

    and-int v4, v4, p6

    if-eqz v4, :cond_188

    const/4 v4, 0x1

    move v5, v4

    .line 1180
    .local v5, abbrevWeekDay:Z
    :goto_31
    const/high16 v4, 0x9

    and-int v4, v4, p6

    if-eqz v4, :cond_18c

    const/4 v4, 0x1

    .line 1181
    .local v4, abbrevMonth:Z
    :goto_38
    and-int/lit8 v6, p6, 0x20

    if-eqz v6, :cond_18f

    const/4 v6, 0x1

    move v12, v6

    .line 1182
    .local v12, noMonthDay:Z
    :goto_3e
    const/high16 v6, 0x2

    and-int v6, v6, p6

    if-eqz v6, :cond_193

    const/4 v6, 0x1

    move v15, v6

    .line 1187
    .local v15, numericDate:Z
    :goto_46
    cmp-long v6, p2, p4

    if-nez v6, :cond_197

    const/4 v6, 0x1

    move v10, v6

    .line 1190
    .local v10, isInstant:Z
    :goto_4c
    if-eqz p7, :cond_19b

    .line 1191
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .line 1197
    .end local v6           #startDate:Landroid/text/format/Time;
    .local v20, startDate:Landroid/text/format/Time;
    :goto_58
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1201
    if-eqz v10, :cond_1b1

    .line 1202
    move-object/from16 p3, v20

    .line 1203
    .end local p2
    .local p3, endDate:Landroid/text/format/Time;
    const/16 p2, 0x0

    .local p2, dayDistance:I
    move-object/from16 p5, p3

    .line 1232
    .end local p3           #endDate:Landroid/text/format/Time;
    .end local p4
    .end local p7
    .local p5, endDate:Landroid/text/format/Time;
    :goto_67
    if-nez v10, :cond_a4

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 p4, v0

    or-int p3, p3, p4

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 p4, v0

    or-int p3, p3, p4

    if-nez p3, :cond_a4

    if-eqz v17, :cond_8b

    const/16 p3, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_a4

    .line 1235
    :cond_8b
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p2, v0

    .end local p2           #dayDistance:I
    const/16 p3, 0x1

    sub-int p2, p2, p3

    move/from16 v0, p2

    move-object/from16 v1, p5

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1236
    const/16 p2, 0x1

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1239
    :cond_a4
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    .line 1240
    .local v21, startDay:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    .line 1241
    .local v22, startMonthNum:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 1243
    .local v26, startYear:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p7, v0

    .line 1244
    .local p7, endDay:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v6, v0

    .line 1245
    .local v6, endMonthNum:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 1247
    .local v9, endYear:I
    const-string p3, ""

    .line 1248
    .local p3, startWeekDayString:Ljava/lang/String;
    const-string p2, ""

    .line 1249
    .local p2, endWeekDayString:Ljava/lang/String;
    if-eqz v18, :cond_717

    .line 1250
    const-string p2, ""

    .line 1251
    .local p2, weekDayFormat:Ljava/lang/String;
    if-eqz v5, :cond_1f5

    .line 1252
    const-string p2, "%a"

    .line 1256
    :goto_d2
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1257
    if-eqz v10, :cond_1f9

    move-object/from16 p2, p3

    .local p2, endWeekDayString:Ljava/lang/String;
    :goto_de
    move-object/from16 v8, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .local v8, endWeekDayString:Ljava/lang/String;
    move-object/from16 v25, p3

    .line 1260
    .end local p3           #startWeekDayString:Ljava/lang/String;
    .local v25, startWeekDayString:Ljava/lang/String;
    :goto_e2
    const-string p3, ""

    .line 1261
    .local p3, startTimeString:Ljava/lang/String;
    const-string p2, ""

    .line 1262
    .local p2, endTimeString:Ljava/lang/String;
    if-eqz v17, :cond_711

    .line 1263
    const-string p2, ""

    .line 1264
    .local p2, startTimeFormat:Ljava/lang/String;
    const-string v7, ""

    .line 1265
    .local v7, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 p2, v0

    if-eqz p2, :cond_203

    .end local p2           #startTimeFormat:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 p3, p2

    .line 1266
    .local p3, force24Hour:Z
    :goto_f8
    and-int/lit8 p2, p6, 0x40

    if-eqz p2, :cond_209

    const/16 p2, 0x1

    .line 1268
    .local p2, force12Hour:Z
    :goto_fe
    if-eqz p3, :cond_20d

    .line 1269
    const/16 p0, 0x1

    .line 1275
    .local p0, use24Hour:Z
    :goto_102
    if-eqz p0, :cond_219

    .line 1276
    const p0, 0x1040070

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #use24Hour:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1347
    .end local v5           #abbrevWeekDay:Z
    .end local p3           #force24Hour:Z
    .local p2, startTimeFormat:Ljava/lang/String;
    :goto_111
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1348
    .local p2, startTimeString:Ljava/lang/String;
    if-eqz v10, :cond_397

    move-object/from16 p0, p2

    .local p0, endTimeString:Ljava/lang/String;
    :goto_11d
    move-object/from16 p4, p0

    .end local p0           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p2

    .line 1355
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    :goto_121
    if-eqz v19, :cond_3a1

    move/from16 v5, v19

    .line 1372
    .end local v19           #showYear:Z
    .local v5, showYear:I
    :goto_125
    if-eqz v15, :cond_3d1

    .line 1373
    const p0, 0x1040075

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1404
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    :goto_134
    if-eqz v18, :cond_466

    .line 1405
    if-eqz v17, :cond_457

    .line 1406
    const p0, 0x104008e

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .line 1418
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :goto_145
    if-eqz v12, :cond_486

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_486

    .line 1420
    const-string p0, "%s"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #endTimeString:Ljava/lang/String;
    const/16 p5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .end local p5           #endDate:Landroid/text/format/Time;
    move-result-object p2

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    aput-object p2, p4, p5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .line 1556
    .end local v4           #abbrevMonth:Z
    .end local v9           #endYear:I
    .end local v12           #noMonthDay:Z
    .end local p1
    .end local p3           #fullFormat:Ljava/lang/String;
    .end local p6
    .end local p7           #endDay:I
    .restart local p0       #fullFormat:Ljava/lang/String;
    :goto_170
    return-object p1

    .line 1174
    .end local v5           #showYear:I
    .end local v6           #endMonthNum:I
    .end local v8           #endWeekDayString:Ljava/lang/String;
    .end local v10           #isInstant:Z
    .end local v11           #startTimeString:Ljava/lang/String;
    .end local v14           #noYear:Z
    .end local v15           #numericDate:Z
    .end local v17           #showTime:Z
    .end local v18           #showWeekDay:Z
    .end local v20           #startDate:Landroid/text/format/Time;
    .end local v21           #startDay:I
    .end local v22           #startMonthNum:I
    .end local v25           #startWeekDayString:Ljava/lang/String;
    .end local v26           #startYear:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, startMillis:J
    .local p4, endMillis:J
    .restart local p6
    .local p7, timeZone:Ljava/lang/String;
    :cond_171
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_b

    .line 1175
    .restart local v17       #showTime:Z
    :cond_176
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_12

    .line 1176
    .restart local v18       #showWeekDay:Z
    :cond_17b
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_19

    .line 1177
    .restart local v19       #showYear:Z
    :cond_180
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_1f

    .line 1178
    .restart local v14       #noYear:Z
    :cond_184
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_28

    .line 1179
    .local v7, useUTC:Z
    :cond_188
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_31

    .line 1180
    .local v5, abbrevWeekDay:Z
    :cond_18c
    const/4 v4, 0x0

    goto/16 :goto_38

    .line 1181
    .restart local v4       #abbrevMonth:Z
    :cond_18f
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_3e

    .line 1182
    .restart local v12       #noMonthDay:Z
    :cond_193
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_46

    .line 1187
    .restart local v15       #numericDate:Z
    :cond_197
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_4c

    .line 1192
    .restart local v10       #isInstant:Z
    :cond_19b
    if-eqz v7, :cond_1a8

    .line 1193
    new-instance v6, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v20       #startDate:Landroid/text/format/Time;
    goto/16 :goto_58

    .line 1195
    .end local v20           #startDate:Landroid/text/format/Time;
    :cond_1a8
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .restart local v6       #startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v20       #startDate:Landroid/text/format/Time;
    goto/16 :goto_58

    .line 1205
    :cond_1b1
    if-eqz p7, :cond_1e2

    .line 1206
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, endDate:Landroid/text/format/Time;
    move-object/from16 p7, v6

    .line 1212
    .end local v6           #endDate:Landroid/text/format/Time;
    .local p7, endDate:Landroid/text/format/Time;
    :goto_1bd
    move-object/from16 v0, p7

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1213
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p3

    .line 1214
    .end local p2           #startMillis:J
    .local p3, startJulianDay:I
    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p4

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 1215
    .local p2, endJulianDay:I
    sub-int p2, p2, p3

    .local p2, dayDistance:I
    move-object/from16 p5, p7

    .end local p4           #endMillis:J
    .end local p7           #endDate:Landroid/text/format/Time;
    .restart local p5       #endDate:Landroid/text/format/Time;
    goto/16 :goto_67

    .line 1207
    .end local p3           #startJulianDay:I
    .end local p5           #endDate:Landroid/text/format/Time;
    .local p2, startMillis:J
    .restart local p4       #endMillis:J
    .local p7, timeZone:Ljava/lang/String;
    :cond_1e2
    if-eqz v7, :cond_1ef

    .line 1208
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    const-string v6, "UTC"

    move-object/from16 v0, p7

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_1bd

    .line 1210
    .local p7, timeZone:Ljava/lang/String;
    :cond_1ef
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    invoke-direct/range {p7 .. p7}, Landroid/text/format/Time;-><init>()V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_1bd

    .line 1254
    .end local p4           #endMillis:J
    .local v6, endMonthNum:I
    .restart local v9       #endYear:I
    .restart local v21       #startDay:I
    .restart local v22       #startMonthNum:I
    .restart local v26       #startYear:I
    .local p2, weekDayFormat:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    .restart local p5       #endDate:Landroid/text/format/Time;
    .local p7, endDay:I
    :cond_1f5
    const-string p2, "%A"

    goto/16 :goto_d2

    .line 1257
    :cond_1f9
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_de

    .line 1265
    .end local p2           #weekDayFormat:Ljava/lang/String;
    .local v7, endTimeFormat:Ljava/lang/String;
    .restart local v8       #endWeekDayString:Ljava/lang/String;
    .restart local v25       #startWeekDayString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_203
    const/16 p2, 0x0

    move/from16 p3, p2

    goto/16 :goto_f8

    .line 1266
    .local p3, force24Hour:Z
    :cond_209
    const/16 p2, 0x0

    goto/16 :goto_fe

    .line 1270
    .local p2, force12Hour:Z
    :cond_20d
    if-eqz p2, :cond_213

    .line 1271
    const/16 p0, 0x0

    .local p0, use24Hour:Z
    goto/16 :goto_102

    .line 1273
    .local p0, context:Landroid/content/Context;
    :cond_213
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    .local p0, use24Hour:Z
    goto/16 :goto_102

    .line 1279
    :cond_219
    const p0, 0x84000

    and-int p0, p0, p6

    if-eqz p0, :cond_2dd

    .end local p0           #use24Hour:Z
    const/16 p0, 0x1

    .line 1280
    .local p0, abbrevTime:Z
    :goto_222
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    if-eqz p2, :cond_2e1

    .end local p2           #force12Hour:Z
    const/16 p2, 0x1

    .line 1281
    .local p2, capAMPM:Z
    :goto_22c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 p3, v0

    if-eqz p3, :cond_2e5

    .end local p3           #force24Hour:Z
    const/16 p3, 0x1

    move/from16 v13, p3

    .line 1282
    .local v13, noNoon:Z
    :goto_238
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    if-eqz p3, :cond_2eb

    const/16 p3, 0x1

    move/from16 p4, p3

    .line 1283
    .local p4, capNoon:Z
    :goto_244
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    if-eqz p3, :cond_2f1

    const/16 p3, 0x1

    move/from16 v11, p3

    .line 1284
    .local v11, noMidnight:Z
    :goto_250
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 p3, v0

    if-eqz p3, :cond_2f7

    const/16 p3, 0x1

    .line 1286
    .local p3, capMidnight:Z
    :goto_25a
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    .end local v5           #abbrevWeekDay:Z
    if-nez v5, :cond_2fb

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_2fb

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1287
    .local v23, startOnTheHour:Z
    :goto_26b
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    if-nez v5, :cond_300

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_300

    const/4 v5, 0x1

    .line 1288
    .local v5, endOnTheHour:Z
    :goto_27a
    if-eqz p0, :cond_310

    if-eqz v23, :cond_310

    .line 1289
    if-eqz p2, :cond_303

    .line 1290
    const v24, 0x10402d1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1306
    .local v24, startTimeFormat:Ljava/lang/String;
    :goto_28b
    if-nez v10, :cond_70d

    .line 1307
    if-eqz p0, :cond_339

    if-eqz v5, :cond_339

    .line 1308
    if-eqz p2, :cond_32c

    .line 1309
    const p0, 0x10402d1

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .line 1321
    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    :goto_29e
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    .end local p2           #capAMPM:Z
    const/16 v7, 0xc

    move/from16 v0, p2

    move v1, v7

    if-ne v0, v1, :cond_362

    if-eqz v5, :cond_362

    if-nez v13, :cond_362

    .line 1322
    if-eqz p4, :cond_355

    .line 1323
    const p0, 0x104032f

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .line 1336
    .restart local p0       #endTimeFormat:Ljava/lang/String;
    :cond_2bc
    :goto_2bc
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    const/16 p3, 0xc

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_709

    .end local p3           #capMidnight:Z
    if-eqz v23, :cond_709

    if-nez v13, :cond_709

    .line 1337
    if-eqz p4, :cond_38a

    .line 1338
    const p2, 0x104032f

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_111

    .line 1279
    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p2, force12Hour:Z
    .local p3, force24Hour:Z
    :cond_2dd
    const/16 p0, 0x0

    goto/16 :goto_222

    .line 1280
    .end local p2           #force12Hour:Z
    .local p0, abbrevTime:Z
    :cond_2e1
    const/16 p2, 0x0

    goto/16 :goto_22c

    .line 1281
    .end local p3           #force24Hour:Z
    .local p2, capAMPM:Z
    :cond_2e5
    const/16 p3, 0x0

    move/from16 v13, p3

    goto/16 :goto_238

    .line 1282
    .restart local v13       #noNoon:Z
    :cond_2eb
    const/16 p3, 0x0

    move/from16 p4, p3

    goto/16 :goto_244

    .line 1283
    .restart local p4       #capNoon:Z
    :cond_2f1
    const/16 p3, 0x0

    move/from16 v11, p3

    goto/16 :goto_250

    .line 1284
    .restart local v11       #noMidnight:Z
    :cond_2f7
    const/16 p3, 0x0

    goto/16 :goto_25a

    .line 1286
    .end local v5           #abbrevWeekDay:Z
    .local p3, capMidnight:Z
    :cond_2fb
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_26b

    .line 1287
    .restart local v23       #startOnTheHour:Z
    :cond_300
    const/4 v5, 0x0

    goto/16 :goto_27a

    .line 1292
    .local v5, endOnTheHour:Z
    :cond_303
    const v24, 0x10402d0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_28b

    .line 1295
    .end local v24           #startTimeFormat:Ljava/lang/String;
    :cond_310
    if-eqz p2, :cond_31f

    .line 1296
    const v24, 0x1040072

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_28b

    .line 1298
    .end local v24           #startTimeFormat:Ljava/lang/String;
    :cond_31f
    const v24, 0x1040071

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_28b

    .line 1311
    :cond_32c
    const p0, 0x10402d0

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_29e

    .line 1314
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_339
    if-eqz p2, :cond_348

    .line 1315
    const p0, 0x1040072

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_29e

    .line 1317
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_348
    const p0, 0x1040071

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_29e

    .line 1325
    .end local p2           #capAMPM:Z
    :cond_355
    const p0, 0x104032e

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_2bc

    .line 1327
    :cond_362
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    if-nez p2, :cond_2bc

    if-eqz v5, :cond_2bc

    if-nez v11, :cond_2bc

    .line 1328
    if-eqz p3, :cond_37d

    .line 1329
    const p0, 0x1040331

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_2bc

    .line 1331
    :cond_37d
    const p0, 0x1040330

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_2bc

    .line 1340
    .end local p3           #capMidnight:Z
    :cond_38a
    const p2, 0x104032e

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_111

    .line 1348
    .end local v5           #endOnTheHour:Z
    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local p4           #capNoon:Z
    .local p2, startTimeString:Ljava/lang/String;
    :cond_397
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_11d

    .line 1359
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    :cond_3a1
    if-eqz v14, :cond_3a9

    .line 1361
    const/16 p0, 0x0

    .end local v19           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .local v5, showYear:I
    goto/16 :goto_125

    .line 1362
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_3a9
    move/from16 v0, v26

    move v1, v9

    if-eq v0, v1, :cond_3b4

    .line 1363
    const/16 p0, 0x1

    .end local v19           #showYear:Z
    .restart local p0       #showYear:Z
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_125

    .line 1366
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_3b4
    new-instance p0, Landroid/text/format/Time;

    invoke-direct/range {p0 .. p0}, Landroid/text/format/Time;-><init>()V

    .line 1367
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Landroid/text/format/Time;->setToNow()V

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p0, v0

    .end local p0           #currentTime:Landroid/text/format/Time;
    move/from16 v0, v26

    move/from16 v1, p0

    if-eq v0, v1, :cond_3ce

    const/16 p0, 0x1

    .end local v19           #showYear:Z
    .local p0, showYear:Z
    :goto_3ca
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_125

    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_3ce
    const/16 p0, 0x0

    goto :goto_3ca

    .line 1374
    .end local v19           #showYear:Z
    .restart local v5       #showYear:I
    :cond_3d1
    if-eqz v5, :cond_415

    .line 1375
    if-eqz v4, :cond_3f5

    .line 1376
    if-eqz v12, :cond_3e6

    .line 1377
    const p0, 0x1040083

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1379
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_3e6
    const p0, 0x104007d

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1382
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_3f5
    if-eqz v12, :cond_406

    .line 1383
    const p0, 0x1040080

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1385
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_406
    const p0, 0x1040078

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1389
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_415
    if-eqz v4, :cond_437

    .line 1390
    if-eqz v12, :cond_428

    .line 1391
    const p0, 0x1040082

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1393
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_428
    const p0, 0x1040081

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1396
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_437
    if-eqz v12, :cond_448

    .line 1397
    const p0, 0x104007f

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1399
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_448
    const p0, 0x104007e

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_134

    .line 1408
    :cond_457
    const p0, 0x104008f

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    goto/16 :goto_145

    .line 1411
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_466
    if-eqz v17, :cond_477

    .line 1412
    const p0, 0x1040090

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_145

    .line 1414
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_477
    const p0, 0x1040085

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_145

    .line 1423
    :cond_486
    move/from16 v0, v26

    move v1, v9

    if-ne v0, v1, :cond_48d

    if-eqz v12, :cond_4cd

    .line 1427
    :cond_48d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1428
    .local p6, startDateString:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1432
    .local p0, endDateString:Ljava/lang/String;
    const/16 p2, 0x6

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object v25, p2, p5

    .end local p5           #endDate:Landroid/text/format/Time;
    const/16 p5, 0x1

    aput-object p6, p2, p5

    const/16 p5, 0x2

    aput-object v11, p2, p5

    const/16 p5, 0x3

    aput-object v8, p2, p5

    const/16 p5, 0x4

    aput-object p0, p2, p5

    const/16 p0, 0x5

    aput-object p4, p2, p0

    .end local p0           #endDateString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1439
    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #endDate:Landroid/text/format/Time;
    .local p6, flags:I
    :cond_4cd
    if-eqz v15, :cond_55e

    .line 1440
    const-string p0, "%m"

    .line 1447
    .local p0, monthFormat:Ljava/lang/String;
    :goto_4d1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1448
    .local v7, startMonthString:Ljava/lang/String;
    const-string p3, "%-d"

    .end local p3           #fullFormat:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1449
    .local v4, startMonthDayString:Ljava/lang/String;
    const-string p3, "%Y"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1451
    .local v9, startYearString:Ljava/lang/String;
    if-eqz v10, :cond_571

    const/16 p0, 0x0

    move-object/from16 p3, p0

    .line 1452
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :goto_4f3
    if-eqz v10, :cond_57d

    const/16 p0, 0x0

    .line 1453
    .local p0, endMonthDayString:Ljava/lang/String;
    :goto_4f7
    if-eqz v10, :cond_589

    const/16 p5, 0x0

    .line 1455
    .end local v12           #noMonthDay:Z
    .local p5, endYearString:Ljava/lang/String;
    :goto_4fb
    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_594

    .line 1461
    const/16 p2, 0x0

    .line 1462
    .local p2, index:I
    if-eqz v18, :cond_506

    const/16 p2, 0x1

    .line 1463
    :cond_506
    if-eqz v5, :cond_50a

    add-int/lit8 p2, p2, 0x2

    .line 1464
    :cond_50a
    if-eqz v17, :cond_50e

    add-int/lit8 p2, p2, 0x4

    .line 1465
    :cond_50e
    if-eqz v15, :cond_512

    add-int/lit8 p2, p2, 0x8

    .line 1466
    :cond_512
    sget-object p6, Landroid/text/format/DateUtils;->sameYearTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1467
    .local p2, resId:I
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1471
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v25, p6, p7

    .end local p7           #endDay:I
    const/16 p7, 0x1

    aput-object v7, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v9, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v8, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1441
    .end local v7           #startMonthString:Ljava/lang/String;
    .end local p0           #fullFormat:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v9, endYear:I
    .restart local v12       #noMonthDay:Z
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    .local p5, endDate:Landroid/text/format/Time;
    .restart local p6       #flags:I
    .restart local p7       #endDay:I
    :cond_55e
    if-eqz v4, :cond_56d

    .line 1442
    const p0, 0x10400a4

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, monthFormat:Ljava/lang/String;
    goto/16 :goto_4d1

    .line 1445
    .end local p0           #monthFormat:Ljava/lang/String;
    :cond_56d
    const-string p0, "%B"

    .restart local p0       #monthFormat:Ljava/lang/String;
    goto/16 :goto_4d1

    .line 1451
    .end local p3           #fullFormat:Ljava/lang/String;
    .local v4, startMonthDayString:Ljava/lang/String;
    .restart local v7       #startMonthString:Ljava/lang/String;
    .local v9, startYearString:Ljava/lang/String;
    :cond_571
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p3, p0

    goto/16 :goto_4f3

    .line 1452
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :cond_57d
    const-string p0, "%-d"

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4f7

    .line 1453
    .local p0, endMonthDayString:Ljava/lang/String;
    :cond_589
    const-string v12, "%Y"

    .end local v12           #noMonthDay:Z
    move-object/from16 v0, p5

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_4fb

    .line 1478
    .local p5, endYearString:Ljava/lang/String;
    :cond_594
    move/from16 v0, v21

    move/from16 v1, p7

    if-eq v0, v1, :cond_5f8

    .line 1480
    const/16 p2, 0x0

    .line 1481
    .local p2, index:I
    if-eqz v18, :cond_5a0

    const/16 p2, 0x1

    .line 1482
    :cond_5a0
    if-eqz v5, :cond_5a4

    add-int/lit8 p2, p2, 0x2

    .line 1483
    :cond_5a4
    if-eqz v17, :cond_5a8

    add-int/lit8 p2, p2, 0x4

    .line 1484
    :cond_5a8
    if-eqz v15, :cond_5ac

    add-int/lit8 p2, p2, 0x8

    .line 1485
    :cond_5ac
    sget-object p6, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1486
    .local p2, resId:I
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1490
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v25, p6, p7

    .end local p7           #endDay:I
    const/16 p7, 0x1

    aput-object v7, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v9, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v8, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1498
    .local p0, endMonthDayString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #endMonthString:Ljava/lang/String;
    .restart local p6       #flags:I
    .restart local p7       #endDay:I
    :cond_5f8
    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_64d

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x1

    .line 1501
    .local p0, showDate:Z
    :goto_5fe
    if-nez v17, :cond_705

    if-nez p0, :cond_705

    if-nez v18, :cond_705

    const/16 p0, 0x1

    move/from16 p5, p0

    .line 1504
    .end local p0           #showDate:Z
    .local p5, showDate:I
    :goto_608
    const-string p0, ""

    .line 1505
    .local p0, timeString:Ljava/lang/String;
    if-eqz v17, :cond_701

    .line 1508
    if-eqz v10, :cond_650

    .line 1511
    move-object/from16 p0, v11

    move-object/from16 p4, p0

    .line 1521
    .end local p0           #timeString:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .end local p6           #flags:I
    .local p4, timeString:Ljava/lang/String;
    :goto_612
    const-string p3, ""

    .line 1522
    .local p3, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 1523
    .local p0, dateString:Ljava/lang/String;
    if-eqz p5, :cond_6ae

    .line 1524
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1525
    if-eqz v18, :cond_682

    .line 1526
    if-eqz v17, :cond_676

    .line 1528
    const p2, 0x1040091

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .line 1556
    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :goto_62f
    const/16 p3, 0x3

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    const/16 p5, 0x0

    aput-object p4, p3, p5

    .end local p5           #showDate:I
    const/16 p4, 0x1

    aput-object v25, p3, p4

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p4, 0x2

    aput-object p0, p3, p4

    invoke-virtual/range {p1 .. p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1498
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_64d
    const/16 p0, 0x0

    goto :goto_5fe

    .line 1514
    .local p0, timeString:Ljava/lang/String;
    .local p5, showDate:I
    :cond_650
    const p0, 0x1040084

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #timeString:Ljava/lang/String;
    move-result-object p0

    .line 1516
    .local p0, timeFormat:Ljava/lang/String;
    const/16 p3, 0x2

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p6, 0x0

    aput-object v11, p3, p6

    .end local p6           #flags:I
    const/16 p6, 0x1

    aput-object p4, p3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timeString:Ljava/lang/String;
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto :goto_612

    .line 1531
    .local p0, dateString:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :cond_676
    const p2, 0x1040092

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_62f

    .line 1534
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_682
    if-eqz v17, :cond_690

    .line 1536
    const p2, 0x104007c

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_62f

    .line 1539
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_690
    const-string p2, "%s"

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p0, p4, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1542
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_6ae
    if-eqz v18, :cond_6dd

    .line 1543
    if-eqz v17, :cond_6bf

    .line 1545
    const p2, 0x1040093

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_62f

    .line 1548
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_6bf
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x0

    aput-object v25, p2, p4

    .end local p4           #timeString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .line 1550
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    :cond_6dd
    if-eqz v17, :cond_6fd

    .line 1551
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p4, p2, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_170

    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_6fd
    move-object/from16 p2, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_62f

    .local p0, timeString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_701
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto/16 :goto_612

    .local p0, showDate:Z
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    :cond_705
    move/from16 p5, p0

    .local p5, showDate:I
    goto/16 :goto_608

    .end local v7           #startMonthString:Ljava/lang/String;
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v5, endOnTheHour:Z
    .local v9, endYear:I
    .local v11, noMidnight:Z
    .restart local v12       #noMonthDay:Z
    .restart local v13       #noNoon:Z
    .restart local v19       #showYear:Z
    .restart local v23       #startOnTheHour:Z
    .restart local v24       #startTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    .local p4, capNoon:Z
    .local p5, endDate:Landroid/text/format/Time;
    :cond_709
    move-object/from16 p2, v24

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_111

    .local v7, endTimeFormat:Ljava/lang/String;
    .restart local v24       #startTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    .local p2, capAMPM:Z
    .local p3, capMidnight:Z
    :cond_70d
    move-object/from16 p0, v7

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_2bc

    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local v24           #startTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .local v7, useUTC:Z
    .local p0, context:Landroid/content/Context;
    .local p2, endTimeString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_711
    move-object/from16 p4, p2

    .end local p2           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p3

    .end local p3           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    goto/16 :goto_121

    .end local v8           #endWeekDayString:Ljava/lang/String;
    .end local v11           #startTimeString:Ljava/lang/String;
    .end local v25           #startWeekDayString:Ljava/lang/String;
    .end local p4           #endTimeString:Ljava/lang/String;
    .local p2, endWeekDayString:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    :cond_717
    move-object/from16 v8, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .restart local v8       #endWeekDayString:Ljava/lang/String;
    move-object/from16 v25, p3

    .end local p3           #startWeekDayString:Ljava/lang/String;
    .restart local v25       #startWeekDayString:Ljava/lang/String;
    goto/16 :goto_e2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1602
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .registers 3
    .parameter "elapsedSeconds"

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .registers 17
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 689
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 691
    const-wide/16 v2, 0x0

    .line 692
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 693
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 695
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 696
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 697
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 699
    :cond_17
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 700
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 701
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 703
    :cond_25
    move-wide v6, p1

    .line 706
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_34

    .line 707
    .end local p1
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .line 709
    .end local p0
    :goto_33
    return-object p0

    .restart local p0
    :cond_34
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_33
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 13
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 751
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 752
    move-object v0, p0

    .line 753
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_41

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 758
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_17
    cmp-long v1, p2, v3

    if-gez v1, :cond_45

    .line 759
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    :goto_1e
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    cmp-long v1, p4, v3

    if-gez v1, :cond_4f

    .line 766
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    :goto_33
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_40
    return-object v1

    .line 756
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_17

    .line 761
    :cond_45
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 768
    :cond_4f
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 773
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_59
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .registers 16
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 718
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 719
    move-object v0, p0

    .line 720
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_47

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 725
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    cmp-long v1, p4, v3

    if-gez v1, :cond_4b

    .line 728
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :goto_26
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    cmp-long v1, p6, v3

    if-gez v1, :cond_55

    .line 735
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :goto_39
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_46
    return-object v1

    .line 723
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_47
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_19

    .line 730
    :cond_4b
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 737
    :cond_55
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 742
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_5f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_46
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .registers 14
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 800
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 801
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 802
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 803
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 804
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 808
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    .line 811
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 815
    .local v0, f:Ljava/text/DateFormat;
    :goto_39
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 813
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_3e
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_39
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .registers 4
    .parameter "ampm"

    .prologue
    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .registers 5
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 315
    sparse-switch p1, :sswitch_data_22

    .line 321
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 324
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 316
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 317
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 318
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 319
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 320
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 315
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .registers 5
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 355
    sparse-switch p1, :sswitch_data_22

    .line 361
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 364
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 365
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 356
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 357
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 358
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 359
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 360
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 355
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .registers 9
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 537
    const-class v2, Landroid/text/format/DateUtils;

    monitor-enter v2

    :try_start_3
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v3, :cond_e

    .line 538
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 540
    :cond_e
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 541
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 542
    .local v0, day1:I
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v3, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 543
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 544
    .local v1, day2:I
    sub-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_31

    move-result v3

    int-to-long v3, v3

    monitor-exit v2

    return-wide v3

    .line 537
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_31
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .registers 20
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 572
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 574
    .local v10, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 575
    .local v8, now:J
    sub-long v0, v8, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 580
    .local v6, duration:J
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-lez v0, :cond_3e

    .line 581
    const-wide/32 p5, 0x240c8400

    .line 586
    :cond_18
    :goto_18
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 589
    .local v11, timeClause:Ljava/lang/CharSequence;
    cmp-long p5, v6, p5

    if-gez p5, :cond_49

    .end local p5
    move-wide v0, p1

    move-wide v2, v8

    move-wide v4, p3

    move/from16 v6, p7

    .line 590
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    .end local v6           #duration:J
    move-result-object p0

    .line 591
    .local p0, relativeClause:Ljava/lang/CharSequence;
    const p1, 0x104032d

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    .end local p3
    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #relativeClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 597
    .local p0, result:Ljava/lang/String;
    :goto_3d
    return-object p0

    .line 582
    .end local v11           #timeClause:Ljava/lang/CharSequence;
    .restart local v6       #duration:J
    .local p0, c:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_3e
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p5, v0

    if-gez v0, :cond_18

    .line 583
    const-wide/32 p5, 0x5265c00

    goto :goto_18

    .line 593
    .end local p5
    .restart local v11       #timeClause:Ljava/lang/CharSequence;
    :cond_49
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    .end local p3
    move-result-object p0

    .line 594
    .local p0, dateClause:Ljava/lang/CharSequence;
    const p1, 0x104007b

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #dateClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, result:Ljava/lang/String;
    goto :goto_3d
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .registers 9
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 611
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 612
    .local v1, startTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 613
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 614
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 616
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    .end local v1           #startTime:Landroid/text/format/Time;
    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 617
    .local v1, startDay:I
    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 619
    .local v0, currentDay:I
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .end local v0           #currentDay:I
    move-result v0

    .line 620
    .local v0, days:I
    cmp-long p1, p3, p1

    if-lez p1, :cond_33

    .end local p1
    const/4 p1, 0x1

    .line 622
    .local p1, past:Z
    :goto_26
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3d

    .line 623
    if-eqz p1, :cond_35

    .line 624
    const p1, 0x104006d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    .line 640
    .end local p0
    .end local p3
    :goto_32
    return-object p0

    .line 620
    .restart local p0
    .restart local p3
    :cond_33
    const/4 p1, 0x0

    goto :goto_26

    .line 626
    .restart local p1       #past:Z
    :cond_35
    const p1, 0x104006f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_32

    .line 628
    .restart local p1       #past:Z
    :cond_3d
    if-nez v0, :cond_47

    .line 629
    const p1, 0x104006e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_32

    .line 633
    .restart local p1       #past:Z
    :cond_47
    if-eqz p1, :cond_5f

    .line 634
    const p1, 0x1130004

    .line 639
    .local p1, resId:I
    :goto_4c
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 640
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .end local p1           #resId:I
    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 636
    .local p0, r:Landroid/content/res/Resources;
    .local p1, past:Z
    .restart local p3
    :cond_5f
    const p1, 0x1130008

    .local p1, resId:I
    goto :goto_4c
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .registers 8
    .parameter "startTime"

    .prologue
    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .registers 13
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 425
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 426
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .registers 14
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 452
    .local v4, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int/2addr v0, p6

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    .line 454
    .local v0, abbrevRelative:Z
    :goto_a
    cmp-long v1, p2, p0

    if-ltz v1, :cond_45

    const/4 v1, 0x1

    move v3, v1

    .line 455
    .local v3, past:Z
    :goto_10
    sub-long v1, p2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 459
    .local v1, duration:J
    const-wide/32 v5, 0xea60

    cmp-long v5, v1, v5

    if-gez v5, :cond_55

    const-wide/32 v5, 0xea60

    cmp-long v5, p4, v5

    if-gez v5, :cond_55

    .line 460
    const-wide/16 p0, 0x3e8

    div-long p0, v1, p0

    .line 461
    .local p0, count:J
    if-eqz v3, :cond_4b

    .line 462
    if-eqz v0, :cond_48

    .line 463
    const p2, 0x1130009

    .line 525
    .end local v1           #duration:J
    .end local p4
    .local p2, resId:I
    :goto_2f
    long-to-int p3, p0

    invoke-virtual {v4, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 526
    .local p2, format:Ljava/lang/String;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #count:J
    aput-object p0, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local v0           #abbrevRelative:Z
    .end local v3           #past:Z
    .end local p2           #format:Ljava/lang/String;
    :goto_42
    return-object p0

    .line 452
    .local p0, time:J
    .local p2, now:J
    .restart local p4
    :cond_43
    const/4 v0, 0x0

    goto :goto_a

    .line 454
    .restart local v0       #abbrevRelative:Z
    :cond_45
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 465
    .restart local v1       #duration:J
    .restart local v3       #past:Z
    .local p0, count:J
    :cond_48
    const/high16 p2, 0x113

    .local p2, resId:I
    goto :goto_2f

    .line 468
    .local p2, now:J
    :cond_4b
    if-eqz v0, :cond_51

    .line 469
    const p2, 0x113000d

    .local p2, resId:I
    goto :goto_2f

    .line 471
    .local p2, now:J
    :cond_51
    const p2, 0x1130005

    .local p2, resId:I
    goto :goto_2f

    .line 474
    .local p0, time:J
    .local p2, now:J
    :cond_55
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v1, v5

    if-gez v5, :cond_7e

    const-wide/32 v5, 0x36ee80

    cmp-long v5, p4, v5

    if-gez v5, :cond_7e

    .line 475
    const-wide/32 p0, 0xea60

    div-long p0, v1, p0

    .line 476
    .local p0, count:J
    if-eqz v3, :cond_74

    .line 477
    if-eqz v0, :cond_70

    .line 478
    const p2, 0x113000a

    .local p2, resId:I
    goto :goto_2f

    .line 480
    .local p2, now:J
    :cond_70
    const p2, 0x1130001

    .local p2, resId:I
    goto :goto_2f

    .line 483
    .local p2, now:J
    :cond_74
    if-eqz v0, :cond_7a

    .line 484
    const p2, 0x113000e

    .local p2, resId:I
    goto :goto_2f

    .line 486
    .local p2, now:J
    :cond_7a
    const p2, 0x1130006

    .local p2, resId:I
    goto :goto_2f

    .line 489
    .local p0, time:J
    .local p2, now:J
    :cond_7e
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v1, v5

    if-gez v5, :cond_a7

    const-wide/32 v5, 0x5265c00

    cmp-long v5, p4, v5

    if-gez v5, :cond_a7

    .line 490
    const-wide/32 p0, 0x36ee80

    div-long p0, v1, p0

    .line 491
    .local p0, count:J
    if-eqz v3, :cond_9d

    .line 492
    if-eqz v0, :cond_99

    .line 493
    const p2, 0x113000b

    .local p2, resId:I
    goto :goto_2f

    .line 495
    .local p2, now:J
    :cond_99
    const p2, 0x1130002

    .local p2, resId:I
    goto :goto_2f

    .line 498
    .local p2, now:J
    :cond_9d
    if-eqz v0, :cond_a3

    .line 499
    const p2, 0x113000f

    .local p2, resId:I
    goto :goto_2f

    .line 501
    .local p2, now:J
    :cond_a3
    const p2, 0x1130007

    .local p2, resId:I
    goto :goto_2f

    .line 504
    .local p0, time:J
    .local p2, now:J
    :cond_a7
    const-wide/32 v5, 0x240c8400

    cmp-long v1, v1, v5

    if-gez v1, :cond_d3

    .end local v1           #duration:J
    const-wide/32 v1, 0x240c8400

    cmp-long p4, p4, v1

    if-gez p4, :cond_d3

    .line 505
    .end local p4
    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide p0

    .line 506
    .local p0, count:J
    if-eqz v3, :cond_c7

    .line 507
    if-eqz v0, :cond_c2

    .line 508
    const p2, 0x113000c

    .local p2, resId:I
    goto/16 :goto_2f

    .line 510
    .local p2, now:J
    :cond_c2
    const p2, 0x1130004

    .local p2, resId:I
    goto/16 :goto_2f

    .line 513
    .local p2, now:J
    :cond_c7
    if-eqz v0, :cond_ce

    .line 514
    const p2, 0x1130010

    .local p2, resId:I
    goto/16 :goto_2f

    .line 516
    .local p2, now:J
    :cond_ce
    const p2, 0x1130008

    .local p2, resId:I
    goto/16 :goto_2f

    .line 522
    .local p0, time:J
    .local p2, now:J
    :cond_d3
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #abbrevRelative:Z
    .end local v3           #past:Z
    move-result-object p0

    goto/16 :goto_42
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1673
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .registers 11
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1624
    .local v0, now:J
    sub-long v2, v0, p1

    .line 1626
    .local v2, span:J
    const-class v6, Landroid/text/format/DateUtils;

    monitor-enter v6

    .line 1627
    :try_start_9
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_14

    .line 1628
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1631
    :cond_14
    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v4, :cond_1f

    .line 1632
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1635
    :cond_1f
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1636
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local v0           #now:J
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1639
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_57

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_57

    .line 1641
    const/4 v5, 0x1

    .local v5, flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1642
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1643
    .end local p1
    .local p2, result:Ljava/lang/String;
    const p1, 0x104031f

    .line 1657
    .local p1, prepositionId:I
    :goto_45
    if-eqz p3, :cond_80

    .line 1658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1659
    .local p0, res:Landroid/content/res/Resources;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1661
    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_55
    monitor-exit v6

    .line 1662
    return-object p0

    .line 1644
    .end local v5           #flags:I
    .local p0, c:Landroid/content/Context;
    .local p1, millis:J
    .restart local p3
    :cond_57
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_6f

    .line 1646
    const v5, 0x20014

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1647
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1650
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x104031e

    .line 1651
    .local p1, prepositionId:I
    goto :goto_45

    .line 1653
    .end local v5           #flags:I
    .end local p2           #result:Ljava/lang/String;
    .local p1, millis:J
    :cond_6f
    const v5, 0x10010

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1654
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1655
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x104031e

    .local p1, prepositionId:I
    goto :goto_45

    .line 1661
    .end local v5           #flags:I
    .end local p0           #c:Landroid/content/Context;
    .end local p1           #prepositionId:I
    .end local p2           #result:Ljava/lang/String;
    .end local p3
    :catchall_7d
    move-exception p0

    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_9 .. :try_end_7f} :catchall_7d

    throw p0

    .restart local v5       #flags:I
    .restart local p0       #c:Landroid/content/Context;
    .restart local p1       #prepositionId:I
    .restart local p2       #result:Ljava/lang/String;
    .restart local p3
    :cond_80
    move-object p0, p2

    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_55
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .registers 5
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 388
    sparse-switch p1, :sswitch_data_22

    .line 395
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 398
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 399
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 389
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 390
    .restart local v0       #list:[I
    goto :goto_5

    .line 391
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 392
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 393
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 394
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 388
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .registers 2

    .prologue
    .line 644
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_3
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 646
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static initFormatStringsLocked()V
    .registers 3

    .prologue
    .line 650
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 652
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_14

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 653
    :cond_14
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 654
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 655
    const v2, 0x1040332

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 656
    const v2, 0x1040333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 658
    :cond_2f
    return-void
.end method

.method public static isToday(J)Z
    .registers 8
    .parameter "when"

    .prologue
    .line 834
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 835
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 837
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 838
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 839
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 841
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 842
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_23

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_23

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_23

    const/4 v4, 0x1

    :goto_22
    return v4

    :cond_23
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    .line 854
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_15

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_15

    move v0, v2

    .line 861
    :goto_14
    return v0

    .line 857
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_27

    move v0, v2

    .line 859
    goto :goto_14

    .line 861
    :cond_27
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .registers 2
    .parameter "zulu"

    .prologue
    .line 824
    if-eqz p0, :cond_d

    .line 825
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 827
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_c
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .registers 5
    .parameter "millis"

    .prologue
    .line 666
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 668
    sget-object v1, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 669
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static toDigitChar(J)C
    .registers 4
    .parameter "digit"

    .prologue
    .line 778
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5
    .parameter "cal"

    .prologue
    .line 875
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 876
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 877
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 878
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 10
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 918
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 919
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 920
    div-int/lit8 v0, v0, 0xa

    .line 921
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 922
    div-int/lit8 v0, v0, 0xa

    .line 923
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 924
    div-int/lit8 v0, v0, 0xa

    .line 925
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 927
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 928
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 929
    div-int/lit8 v0, v0, 0xa

    .line 930
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 932
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 933
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 934
    div-int/lit8 v0, v0, 0xa

    .line 935
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 937
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 939
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 940
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 941
    div-int/lit8 v0, v0, 0xa

    .line 942
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 944
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 945
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 946
    div-int/lit8 v0, v0, 0xa

    .line 947
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 949
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 950
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 951
    div-int/lit8 v0, v0, 0xa

    .line 952
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 954
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .registers 5
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 895
    if-eqz p1, :cond_1b

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 897
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 901
    :goto_16
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 899
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_16
.end method
