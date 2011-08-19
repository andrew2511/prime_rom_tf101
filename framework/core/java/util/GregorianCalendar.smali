.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private cachedFields:[I

.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private isCached:Z

.field private transient julianSkew:I

.field private lastMidnightMillis:J

.field private lastYearSkew:I

.field private nextMidnightMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    .line 207
    new-array v0, v2, [B

    fill-array-data v0, :array_28

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_32

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    .line 216
    new-array v0, v1, [I

    fill-array-data v0, :array_74

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_9a

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    .line 207
    :array_28
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 210
    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 213
    :array_4e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0xd2t 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x0t 0xddt 0x6dt 0x0t
    .end array-data

    .line 216
    :array_74
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0xe3t 0x35t 0xfdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 219
    :array_9a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xabt 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x80t 0x4ft 0x12t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 240
    return-void
.end method

.method public constructor <init>(III)V
    .registers 10
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 254
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 256
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 274
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 275
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 276
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .registers 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 297
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 298
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 299
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 303
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 314
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timezone"

    .prologue
    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 9
    .parameter "timezone"
    .parameter "locale"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 340
    return-void

    .line 224
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ignored"

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x7d0

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 343
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v3, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v5, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v5, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v3, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 344
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 345
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 346
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final cachedFieldsCheckAndGet(JJJII)V
    .registers 14
    .parameter "timeVal"
    .parameter "newTimeMillis"
    .parameter "newTimeMillisAdjusted"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 570
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0x10

    aget v0, v1, v2

    .line 571
    .local v0, dstOffset:I
    iget-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p3, v1

    if-gez v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-ne v1, p8, :cond_2d

    if-nez v0, :cond_25

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p5, v1

    if-gez v1, :cond_2d

    :cond_25
    if-eqz v0, :cond_34

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p5, v1

    if-gtz v1, :cond_34

    .line 577
    :cond_2d
    invoke-direct {p0, p1, p2, p7, p8}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 590
    :goto_33
    return-void

    .line 580
    :cond_34
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 581
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x2

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 582
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x5

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 583
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x7

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    .line 584
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aput v3, v1, v2

    .line 585
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x3

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    .line 586
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x4

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    .line 587
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x6

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v1, v2

    .line 588
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0x8

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aput v3, v1, v2

    goto :goto_33
.end method

.method private computeYearAndDay(JJ)I
    .registers 12
    .parameter "dayCount"
    .parameter "localTime"

    .prologue
    const/4 v6, 0x1

    .line 906
    const/16 v3, 0x7b2

    .line 907
    .local v3, year:I
    move-wide v1, p1

    .line 908
    .local v1, days:J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_e

    .line 909
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 913
    :cond_e
    :goto_e
    const-wide/16 v4, 0x16d

    div-long v4, v1, v4

    long-to-int v0, v4

    .local v0, approxYears:I
    if-eqz v0, :cond_1d

    .line 914
    add-int/2addr v3, v0

    .line 915
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    sub-long v1, p1, v4

    goto :goto_e

    .line 917
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2a

    .line 918
    sub-int/2addr v3, v6

    .line 919
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 921
    :cond_2a
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    aput v3, v4, v6

    .line 922
    long-to-int v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(I)J
    .registers 12
    .parameter "iyear"

    .prologue
    .line 926
    int-to-long v2, p1

    .line 928
    .local v2, year:J
    const-wide/16 v4, 0x7b2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4f

    .line 929
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b1

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 930
    .local v0, days:J
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_30

    .line 931
    const-wide/16 v4, 0x76d

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x641

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    :goto_2e
    move-wide v4, v0

    .line 945
    .end local v0           #days:J
    :goto_2f
    return-wide v4

    .line 933
    .restart local v0       #days:J
    :cond_30
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3c

    .line 934
    iget v4, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 935
    :cond_3c
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_4a

    .line 936
    iget v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 938
    :cond_4a
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 942
    .end local v0           #days:J
    :cond_4f
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6a

    .line 943
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget v6, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_2f

    .line 945
    :cond_6a
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_2f
.end method

.method private daysInMonth()I
    .registers 4

    .prologue
    .line 950
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 954
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 955
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 958
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_b
.end method

.method private daysInYear(I)I
    .registers 5
    .parameter "year"

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x16e

    move v0, v1

    .line 963
    .local v0, daysInYear:I
    :goto_9
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_10

    .line 964
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 966
    :cond_10
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_19

    .line 967
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 969
    :cond_19
    return v0

    .line 962
    .end local v0           #daysInYear:I
    :cond_1a
    const/16 v1, 0x16d

    move v0, v1

    goto :goto_9
.end method

.method private daysInYear(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 973
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-le p2, v0, :cond_c

    .line 974
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 977
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_b
.end method

.method private final fullFieldsCalc(JII)V
    .registers 26
    .parameter "timeVal"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 465
    const-wide/32 v5, 0x5265c00

    div-long v13, p1, v5

    .line 467
    .local v13, days:J
    if-gez p3, :cond_f

    .line 468
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 469
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    .line 472
    :cond_f
    add-int p3, p3, p4

    .line 473
    :goto_11
    if-gez p3, :cond_1c

    .line 474
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 475
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    goto :goto_11

    .line 477
    :cond_1c
    :goto_1c
    const v5, 0x5265c00

    move/from16 v0, p3

    move v1, v5

    if-lt v0, v1, :cond_2d

    .line 478
    const v5, 0x5265c00

    sub-int p3, p3, v5

    .line 479
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto :goto_1c

    .line 482
    :cond_2d
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v5, v0

    add-long v5, v5, p1

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v12

    .line 483
    .local v12, dayOfYear:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aput v12, v5, v6

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v6, v0

    if-ne v5, v6, :cond_67

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide v5, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v7, v0

    add-long v7, v7, p1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_67

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    move v5, v0

    add-int/2addr v12, v5

    .line 487
    :cond_67
    div-int/lit8 v8, v12, 0x20

    .line 488
    .local v8, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v17

    .line 489
    .local v17, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v5

    sub-int v9, v12, v5

    .line 490
    .local v9, date:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    if-le v9, v5, :cond_9a

    .line 491
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v9, v5

    .line 492
    add-int/lit8 v8, v8, 0x1

    .line 494
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x7

    const-wide/16 v10, 0x3

    sub-long v10, v13, v10

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-gtz v5, :cond_2aa

    const/4 v5, 0x0

    move/from16 v16, v5

    .line 497
    .local v16, dstOffset:I
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-lez v5, :cond_c8

    .line 498
    sub-int v16, v16, p4

    .line 500
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x10

    aput v16, v5, v6

    .line 501
    if-eqz v16, :cond_171

    .line 502
    move-wide/from16 v18, v13

    .line 503
    .local v18, oldDays:J
    add-int p3, p3, v16

    .line 504
    if-gez p3, :cond_2c9

    .line 505
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 506
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    .line 511
    :cond_e1
    :goto_e1
    cmp-long v5, v18, v13

    if-eqz v5, :cond_171

    .line 512
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v5, v0

    sub-long v5, p1, v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v7, v0

    add-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v12

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aput v12, v5, v6

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v6, v0

    if-ne v5, v6, :cond_129

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide v5, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v7, v0

    sub-long v7, p1, v7

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v9, v0

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gtz v5, :cond_129

    .line 516
    .end local v9           #date:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    move v5, v0

    add-int/2addr v12, v5

    .line 518
    :cond_129
    div-int/lit8 v8, v12, 0x20

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v17

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v5

    sub-int v9, v12, v5

    .line 521
    .restart local v9       #date:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    if-le v9, v5, :cond_15c

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v9, v5

    .line 523
    add-int/lit8 v8, v8, 0x1

    .line 525
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x7

    const-wide/16 v10, 0x3

    sub-long v10, v13, v10

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 529
    .end local v18           #oldDays:J
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xe

    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x3e8

    move v7, v0

    aput v7, v5, v6

    .line 530
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p3, v0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xd

    rem-int/lit8 v7, p3, 0x3c

    aput v7, v5, v6

    .line 532
    div-int/lit8 p3, p3, 0x3c

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xc

    rem-int/lit8 v7, p3, 0x3c

    aput v7, v5, v6

    .line 534
    div-int/lit8 p3, p3, 0x3c

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xb

    rem-int/lit8 v7, p3, 0x18

    aput v7, v5, v6

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    const/16 v10, 0xb

    if-le v7, v10, :cond_2db

    const/4 v7, 0x1

    :goto_1bf
    aput v7, v5, v6

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    rem-int/lit8 v7, v7, 0xc

    aput v7, v5, v6

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-gtz v5, :cond_2de

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    neg-int v7, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 545
    :goto_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x5

    aput v9, v5, v6

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x8

    const/4 v7, 0x1

    sub-int v7, v9, v7

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x4

    const/4 v7, 0x1

    sub-int v7, v9, v7

    int-to-long v8, v9

    sub-long v8, v13, v8

    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    .end local v8           #month:I
    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 550
    const-wide/16 v5, 0x3

    sub-long v5, v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v8, 0x6

    aget v7, v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v15

    .line 552
    .local v15, daysFromStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int/2addr v5, v15

    div-int/lit8 v5, v5, 0x7

    const/4 v6, 0x7

    sub-int/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v6, v7, :cond_2e9

    const/4 v6, 0x1

    :goto_275
    add-int v20, v5, v6

    .line 554
    .local v20, week:I
    if-nez v20, :cond_2f0

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    .end local v9           #date:I
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_2eb

    const/4 v8, 0x2

    :goto_294
    sub-int v8, v15, v8

    int-to-long v8, v8

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_2ed

    const/16 v7, 0x35

    :goto_2a7
    aput v7, v5, v6

    .line 565
    :goto_2a9
    return-void

    .line 495
    .end local v15           #daysFromStart:I
    .end local v16           #dstOffset:I
    .end local v20           #week:I
    .restart local v8       #month:I
    .restart local v9       #date:I
    :cond_2aa
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v10, v0

    const/4 v11, 0x7

    aget v10, v10, v11

    move/from16 v11, p3

    invoke-virtual/range {v5 .. v11}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v5

    move/from16 v16, v5

    goto/16 :goto_bc

    .line 507
    .restart local v16       #dstOffset:I
    .restart local v18       #oldDays:J
    :cond_2c9
    const v5, 0x5265c00

    move/from16 v0, p3

    move v1, v5

    if-lt v0, v1, :cond_e1

    .line 508
    const v5, 0x5265c00

    sub-int p3, p3, v5

    .line 509
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto/16 :goto_e1

    .line 536
    .end local v18           #oldDays:J
    :cond_2db
    const/4 v7, 0x0

    goto/16 :goto_1bf

    .line 543
    :cond_2de
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    goto/16 :goto_1fb

    .line 552
    .end local v8           #month:I
    .restart local v15       #daysFromStart:I
    :cond_2e9
    const/4 v6, 0x0

    goto :goto_275

    .line 555
    .end local v9           #date:I
    .restart local v20       #week:I
    :cond_2eb
    const/4 v8, 0x1

    goto :goto_294

    :cond_2ed
    const/16 v7, 0x34

    goto :goto_2a7

    .line 558
    .restart local v9       #date:I
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aget v5, v5, v6

    if-eqz v17, :cond_329

    const/16 v6, 0x16f

    :goto_2fc
    if-eqz v17, :cond_32c

    const/4 v7, 0x2

    :goto_2ff
    add-int/2addr v7, v15

    int-to-long v7, v7

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_333

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x7

    if-eqz v17, :cond_32e

    const/4 v8, 0x2

    :goto_315
    add-int/2addr v8, v15

    int-to-long v8, v8

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_330

    const/4 v7, 0x1

    :goto_326
    aput v7, v5, v6

    goto :goto_2a9

    .line 558
    :cond_329
    const/16 v6, 0x16e

    goto :goto_2fc

    :cond_32c
    const/4 v7, 0x1

    goto :goto_2ff

    .line 560
    :cond_32e
    const/4 v8, 0x1

    goto :goto_315

    :cond_330
    move/from16 v7, v20

    goto :goto_326

    .line 563
    :cond_333
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    aput v20, v5, v6

    goto/16 :goto_2a9
.end method

.method private getOffset(J)I
    .registers 25
    .parameter "localTime"

    .prologue
    .line 1162
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1163
    .local v3, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1164
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 1207
    :goto_e
    return v4

    .line 1167
    :cond_f
    const-wide/32 v18, 0x5265c00

    div-long v11, p1, v18

    .line 1168
    .local v11, dayCount:J
    const-wide/32 v18, 0x5265c00

    rem-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v9, v0

    .line 1169
    .local v9, millis:I
    if-gez v9, :cond_27

    .line 1170
    const v4, 0x5265c00

    add-int/2addr v9, v4

    .line 1171
    const-wide/16 v18, 0x1

    sub-long v11, v11, v18

    .line 1174
    :cond_27
    const/16 v5, 0x7b2

    .line 1175
    .local v5, year:I
    move-wide v14, v11

    .line 1176
    .local v14, days:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_3f

    .line 1177
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    move v4, v0

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1181
    :cond_3f
    :goto_3f
    const-wide/16 v18, 0x16d

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v10, v0

    .local v10, approxYears:I
    if-eqz v10, :cond_54

    .line 1182
    add-int/2addr v5, v10

    .line 1183
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v18

    sub-long v14, v11, v18

    goto :goto_3f

    .line 1185
    :cond_54
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_8b

    .line 1186
    const/4 v4, 0x1

    sub-int/2addr v5, v4

    .line 1187
    const-wide/16 v18, 0x16d

    add-long v18, v18, v14

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_93

    const/4 v4, 0x1

    :goto_6a
    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    .line 1188
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v4, v0

    if-ne v5, v4, :cond_8b

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_8b

    .line 1189
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1192
    :cond_8b
    if-gtz v5, :cond_95

    .line 1193
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    goto/16 :goto_e

    .line 1187
    :cond_93
    const/4 v4, 0x0

    goto :goto_6a

    .line 1195
    :cond_95
    long-to-int v4, v14

    add-int/lit8 v13, v4, 0x1

    .line 1197
    .local v13, dayOfYear:I
    div-int/lit8 v6, v13, 0x20

    .line 1198
    .local v6, month:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 1199
    .local v16, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v7, v13, v4

    .line 1200
    .local v7, date:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v7, v4, :cond_c3

    .line 1201
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v7, v4

    .line 1202
    add-int/lit8 v6, v6, 0x1

    .line 1204
    :cond_c3
    const-wide/16 v18, 0x3

    sub-long v18, v11, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 1205
    .local v8, dayOfWeek:I
    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v17

    .local v17, offset:I
    move/from16 v4, v17

    .line 1207
    goto/16 :goto_e
.end method

.method private julianError()I
    .registers 3

    .prologue
    .line 1241
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private mod(II)I
    .registers 5
    .parameter "value"
    .parameter "mod"

    .prologue
    .line 1245
    rem-int v0, p1, p2

    .line 1246
    .local v0, rem:I
    if-gez p1, :cond_9

    if-gez v0, :cond_9

    .line 1247
    add-int v1, v0, p2

    .line 1249
    :goto_8
    return v1

    :cond_9
    move v1, v0

    goto :goto_8
.end method

.method private mod7(J)I
    .registers 6
    .parameter "num1"

    .prologue
    .line 1253
    const-wide/16 v1, 0x7

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 1254
    .local v0, rem:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_10

    if-gez v0, :cond_10

    .line 1255
    add-int/lit8 v1, v0, 0x7

    .line 1257
    :goto_f
    return v1

    :cond_10
    move v1, v0

    goto :goto_f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1433
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1435
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1427
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 16
    .parameter "field"
    .parameter "value"

    .prologue
    .line 361
    if-nez p2, :cond_3

    .line 450
    :cond_2
    :goto_2
    return-void

    .line 364
    :cond_3
    if-ltz p1, :cond_9

    const/16 v7, 0xf

    if-lt p1, v7, :cond_f

    .line 365
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 368
    :cond_f
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 370
    if-nez p1, :cond_32

    .line 371
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 372
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2a

    .line 373
    if-gez p2, :cond_2

    .line 376
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 383
    :goto_26
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 378
    :cond_2a
    if-lez p2, :cond_2

    .line 381
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_26

    .line 387
    :cond_32
    const/4 v7, 0x1

    if-eq p1, v7, :cond_38

    const/4 v7, 0x2

    if-ne p1, v7, :cond_85

    .line 388
    :cond_38
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 389
    const/4 v7, 0x2

    if-ne p1, v7, :cond_57

    .line 390
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int v1, v7, p2

    .line 391
    .local v1, month:I
    if-gez v1, :cond_82

    .line 392
    const/16 v7, 0xb

    sub-int v7, v1, v7

    div-int/lit8 p2, v7, 0xc

    .line 393
    rem-int/lit8 v7, v1, 0xc

    add-int/lit8 v1, v7, 0xc

    .line 397
    :goto_51
    const/4 v7, 0x2

    rem-int/lit8 v8, v1, 0xc

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 399
    .end local v1           #month:I
    :cond_57
    const/4 v7, 0x1

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v8, p2

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 400
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v7

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    .line 401
    .local v0, days:I
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x5

    aget v7, v7, v8

    if-le v7, v0, :cond_7e

    .line 402
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 404
    :cond_7e
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 395
    .end local v0           #days:I
    .restart local v1       #month:I
    :cond_82
    div-int/lit8 p2, v1, 0xc

    goto :goto_51

    .line 408
    .end local v1           #month:I
    :cond_85
    const-wide/16 v2, 0x0

    .line 409
    .local v2, multiplier:J
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 410
    packed-switch p1, :pswitch_data_f8

    .line 438
    :goto_8d
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_bc

    .line 439
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 440
    .local v6, zoneOffset:I
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v5

    .line 441
    .local v5, offset:I
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    mul-long/2addr v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    .line 442
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v4

    .line 444
    .local v4, newOffset:I
    if-eq v4, v5, :cond_bc

    .line 445
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    sub-int v9, v5, v4

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    .line 448
    .end local v4           #newOffset:I
    .end local v5           #offset:I
    .end local v6           #zoneOffset:I
    :cond_bc
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 449
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 412
    :pswitch_c4
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 415
    :pswitch_cb
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 418
    :pswitch_d5
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/32 v11, 0xea60

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 422
    :pswitch_e0
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/32 v11, 0x36ee80

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 425
    :pswitch_eb
    const-wide/32 v2, 0x2932e00

    .line 426
    goto :goto_8d

    .line 430
    :pswitch_ef
    const-wide/32 v2, 0x5265c00

    .line 431
    goto :goto_8d

    .line 435
    :pswitch_f3
    const-wide/32 v2, 0x240c8400

    goto :goto_8d

    .line 410
    nop

    :pswitch_data_f8
    .packed-switch 0x3
        :pswitch_f3
        :pswitch_f3
        :pswitch_ef
        :pswitch_ef
        :pswitch_ef
        :pswitch_f3
        :pswitch_eb
        :pswitch_e0
        :pswitch_e0
        :pswitch_d5
        :pswitch_cb
        :pswitch_c4
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 459
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 460
    .local v0, thisClone:Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    iput-object p0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 461
    return-object v0
.end method

.method protected computeFields()V
    .registers 22

    .prologue
    .line 594
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v20

    .line 595
    .local v20, timeZone:Ljava/util/TimeZone;
    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v6, v0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    move v15, v5

    .line 596
    .local v15, dstOffset:I
    :goto_1c
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v13

    .line 597
    .local v13, zoneOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x10

    aput v15, v5, v6

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xf

    aput v13, v5, v6

    .line 600
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v5, v0

    const-wide/32 v7, 0x5265c00

    rem-long/2addr v5, v7

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v18, v0

    .line 601
    .local v18, millis:I
    move/from16 v12, v18

    .line 603
    .local v12, savedMillis:I
    add-int v19, v13, v15

    .line 604
    .local v19, offset:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v5, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v7, v0

    add-long v8, v5, v7

    .line 606
    .local v8, newTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v5, v0

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-lez v5, :cond_12c

    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-gez v5, :cond_12c

    if-lez v19, :cond_12c

    .line 607
    const-wide v8, 0x7fffffffffffffffL

    .line 614
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/GregorianCalendar;->isCached:Z

    move v5, v0

    if-eqz v5, :cond_16c

    .line 615
    if-gez v18, :cond_74

    .line 616
    const v5, 0x5265c00

    add-int v18, v18, v5

    .line 620
    :cond_74
    add-int v18, v18, v13

    .line 621
    add-int v18, v18, v15

    .line 623
    if-gez v18, :cond_143

    .line 624
    const v5, 0x5265c00

    add-int v18, v18, v5

    .line 629
    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xe

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x3e8

    move v7, v0

    aput v7, v5, v6

    .line 630
    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xd

    rem-int/lit8 v7, v18, 0x3c

    aput v7, v5, v6

    .line 632
    div-int/lit8 v18, v18, 0x3c

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xc

    rem-int/lit8 v7, v18, 0x3c

    aput v7, v5, v6

    .line 634
    div-int/lit8 v18, v18, 0x3c

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xb

    rem-int/lit8 v7, v18, 0x18

    aput v7, v5, v6

    .line 636
    div-int/lit8 v18, v18, 0x18

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    const/16 v10, 0xb

    if-le v7, v10, :cond_152

    const/4 v7, 0x1

    :goto_cf
    aput v7, v5, v6

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    rem-int/lit8 v7, v7, 0xc

    aput v7, v5, v6

    .line 641
    move-wide v10, v8

    .line 642
    .local v10, newTimeAdjusted:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 644
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v16

    .line 646
    .local v16, dstSavings:I
    if-nez v15, :cond_155

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    :goto_f6
    add-long/2addr v10, v5

    .line 649
    .end local v16           #dstSavings:I
    :cond_f7
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-lez v5, :cond_15b

    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-gez v5, :cond_15b

    if-nez v15, :cond_15b

    .line 650
    const-wide v10, 0x7fffffffffffffffL

    .line 655
    :cond_10a
    :goto_10a
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Ljava/util/GregorianCalendar;->cachedFieldsCheckAndGet(JJJII)V

    .line 661
    .end local v10           #newTimeAdjusted:J
    :goto_114
    const/16 v17, 0x0

    .local v17, i:I
    :goto_116
    const/16 v5, 0x11

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_17a

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object v5, v0

    const/4 v6, 0x1

    aput-boolean v6, v5, v17

    .line 661
    add-int/lit8 v17, v17, 0x1

    goto :goto_116

    .line 595
    .end local v8           #newTime:J
    .end local v12           #savedMillis:I
    .end local v13           #zoneOffset:I
    .end local v15           #dstOffset:I
    .end local v17           #i:I
    .end local v18           #millis:I
    .end local v19           #offset:I
    :cond_128
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_1c

    .line 608
    .restart local v8       #newTime:J
    .restart local v12       #savedMillis:I
    .restart local v13       #zoneOffset:I
    .restart local v15       #dstOffset:I
    .restart local v18       #millis:I
    .restart local v19       #offset:I
    :cond_12c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v5, v0

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-gez v5, :cond_66

    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-lez v5, :cond_66

    if-gez v19, :cond_66

    .line 609
    const-wide/high16 v8, -0x8000

    goto/16 :goto_66

    .line 625
    :cond_143
    const v5, 0x5265c00

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_7f

    .line 626
    const v5, 0x5265c00

    sub-int v18, v18, v5

    goto/16 :goto_7f

    .line 637
    :cond_152
    const/4 v7, 0x0

    goto/16 :goto_cf

    .line 646
    .restart local v10       #newTimeAdjusted:J
    .restart local v16       #dstSavings:I
    :cond_155
    move/from16 v0, v16

    neg-int v0, v0

    move v5, v0

    int-to-long v5, v5

    goto :goto_f6

    .line 651
    .end local v16           #dstSavings:I
    :cond_15b
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-gez v5, :cond_10a

    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_10a

    if-eqz v15, :cond_10a

    .line 652
    const-wide/high16 v10, -0x8000

    goto :goto_10a

    .line 658
    .end local v10           #newTimeAdjusted:J
    :cond_16c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v12

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    goto :goto_114

    .line 666
    .restart local v17       #i:I
    :cond_17a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/GregorianCalendar;->isCached:Z

    move v5, v0

    if-nez v5, :cond_2aa

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v8, v5

    if-eqz v5, :cond_2aa

    const-wide/high16 v5, -0x8000

    cmp-long v5, v8, v5

    if-eqz v5, :cond_2aa

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_19d

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/util/SimpleTimeZone;

    move v5, v0

    if-eqz v5, :cond_2aa

    .line 670
    :cond_19d
    const/4 v14, 0x0

    .line 672
    .local v14, cacheMillis:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    aput v7, v5, v6

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x2

    aget v7, v7, v10

    aput v7, v5, v6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x5

    aget v7, v7, v10

    aput v7, v5, v6

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x7

    aget v7, v7, v10

    aput v7, v5, v6

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x4

    aput v13, v5, v6

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    aput v7, v5, v6

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x3

    aget v7, v7, v10

    aput v7, v5, v6

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x4

    aget v7, v7, v10

    aput v7, v5, v6

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x6

    aget v7, v7, v10

    aput v7, v5, v6

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    move-object v5, v0

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0x8

    aget v7, v7, v10

    aput v7, v5, v6

    .line 683
    const/16 v5, 0x17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v6, v0

    const/16 v7, 0xb

    aget v6, v6, v7

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v14, v5

    .line 684
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v6, v0

    const/16 v7, 0xc

    aget v6, v6, v7

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v14, v5

    .line 685
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v6, v0

    const/16 v7, 0xd

    aget v6, v6, v7

    sub-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v14, v5

    .line 686
    int-to-long v5, v14

    add-long/2addr v5, v8

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v14, v5, 0x3e8

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xc

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v14, v5

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v14, v5

    .line 691
    int-to-long v5, v14

    sub-long v5, v8, v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 693
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/GregorianCalendar;->isCached:Z

    .line 695
    .end local v14           #cacheMillis:I
    :cond_2aa
    return-void
.end method

.method protected computeTime()V
    .registers 28

    .prologue
    .line 699
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_2d8

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_36

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    if-ltz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 702
    :cond_30
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 704
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 705
    :cond_60
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 707
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    if-ltz v20, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_96

    .line 708
    :cond_90
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 710
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    if-ltz v20, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c6

    .line 711
    :cond_c0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 713
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    if-ltz v20, :cond_f0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    const/16 v21, 0x3e7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f6

    .line 715
    :cond_f0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 717
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x35

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12c

    .line 719
    :cond_126
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 721
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_162

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_162

    .line 723
    :cond_15c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 725
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_198

    .line 727
    :cond_192
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 729
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1ce

    .line 731
    :cond_1c8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 733
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1fe

    .line 734
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 736
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_22e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_22e

    .line 737
    :cond_228
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 739
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2a8

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_277

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116babfe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27d

    .line 742
    :cond_277
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 743
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116bd2d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2a8

    .line 744
    :cond_2a2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 747
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-ltz v20, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2d8

    .line 748
    :cond_2d2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 753
    :cond_2d8
    const-wide/16 v6, 0x0

    .line 754
    .local v6, hour:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3af

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3af

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    .line 759
    :cond_302
    :goto_302
    const-wide/32 v20, 0x36ee80

    mul-long v11, v6, v20

    .line 761
    .local v11, timeVal:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_329

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 764
    :cond_329
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_34a

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 767
    :cond_34a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_367

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v11, v11, v20

    .line 772
    :cond_367
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3d9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v19, v20

    .line 773
    .local v19, year:I
    :goto_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3ee

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_3de

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3de

    .line 776
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 756
    .end local v11           #timeVal:J
    .end local v19           #year:I
    :cond_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_302

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    goto/16 :goto_302

    .line 772
    .restart local v11       #timeVal:J
    :cond_3d9
    const/16 v20, 0x7b2

    move/from16 v19, v20

    goto :goto_37f

    .line 778
    .restart local v19       #year:I
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_3ee

    .line 779
    const/16 v20, 0x1

    sub-int v19, v20, v19

    .line 783
    :cond_3ee
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-nez v20, :cond_406

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_543

    :cond_406
    const/16 v20, 0x1

    move/from16 v18, v20

    .line 785
    .local v18, weekMonthSet:Z
    :goto_40a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-nez v20, :cond_424

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-nez v20, :cond_424

    if-eqz v18, :cond_549

    :cond_424
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_549

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 787
    .local v16, useMonth:Z
    :goto_436
    if-eqz v16, :cond_48c

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_454

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_48c

    .line 789
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_555

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_555

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_54f

    if-eqz v18, :cond_54f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_54f

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 797
    :cond_48c
    :goto_48c
    if-eqz v16, :cond_788

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v9, v20, v21

    .line 799
    .local v9, month:I
    div-int/lit8 v20, v9, 0xc

    add-int v19, v19, v20

    .line 800
    rem-int/lit8 v9, v9, 0xc

    .line 801
    if-gez v9, :cond_4a4

    .line 802
    add-int/lit8 v19, v19, -0x1

    .line 803
    add-int/lit8 v9, v9, 0xc

    .line 805
    :cond_4a4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    .line 806
    .local v8, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v4, v20, v22

    .line 807
    .local v4, days:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v15, v20, v21

    .line 808
    .local v15, useDate:Z
    if-eqz v15, :cond_50b

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4f9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4f9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_50b

    .line 811
    :cond_4f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_507

    if-nez v18, :cond_584

    :cond_507
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 813
    :cond_50b
    :goto_50b
    if-eqz v15, :cond_623

    .line 814
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_589

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_53d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_589

    .line 817
    :cond_53d
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 783
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    .end local v16           #useMonth:Z
    .end local v18           #weekMonthSet:Z
    :cond_543
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_40a

    .line 785
    .restart local v18       #weekMonthSet:Z
    :cond_549
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_436

    .line 790
    .restart local v16       #useMonth:Z
    :cond_54f
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_48c

    .line 792
    :cond_555
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_48c

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57f

    const/16 v20, 0x1

    move/from16 v16, v20

    :goto_57d
    goto/16 :goto_48c

    :cond_57f
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_57d

    .line 811
    .restart local v4       #days:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_584
    const/16 v20, 0x0

    move/from16 v15, v20

    goto :goto_50b

    .line 819
    :cond_589
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 878
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    :cond_59e
    :goto_59e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    .line 880
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    add-long v11, v11, v20

    .line 882
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5e3

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    cmp-long v20, v11, v20

    if-ltz v20, :cond_5e3

    .line 884
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v11, v11, v20

    .line 893
    :cond_5e3
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v11, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v13, v20, v22

    .line 895
    .local v13, timeValWithoutDST:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v11, v11, v20

    .line 898
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 899
    cmp-long v20, v13, v11

    if-eqz v20, :cond_622

    .line 900
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    .line 901
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 903
    :cond_622
    return-void

    .line 822
    .end local v13           #timeValWithoutDST:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_623
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_6a4

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .line 827
    .local v3, dayOfWeek:I
    :goto_63d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_6ad

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6ad

    .line 829
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 830
    .local v10, skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 832
    goto/16 :goto_59e

    .line 825
    .end local v3           #dayOfWeek:I
    .end local v10           #skew:I
    :cond_6a4
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .restart local v3       #dayOfWeek:I
    goto :goto_63d

    .line 832
    :cond_6ad
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_734

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    if-ltz v20, :cond_6f2

    .line 834
    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    const/16 v22, 0x1

    sub-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 837
    :cond_6f2
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v20

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    const-wide/16 v25, 0x3

    sub-long v23, v23, v25

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 842
    :cond_734
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_59e

    .line 843
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 844
    .restart local v10       #skew:I
    add-int v20, v10, v3

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 848
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v10           #skew:I
    .end local v15           #useDate:Z
    :cond_788
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_841

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_841

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 850
    .local v17, useWeekYear:Z
    :goto_7a6
    if-eqz v17, :cond_7be

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7be

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v17, v20, v21

    .line 853
    :cond_7be
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    .line 854
    .restart local v4       #days:J
    if-eqz v17, :cond_850

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_847

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .line 861
    .restart local v3       #dayOfWeek:I
    :goto_7e2
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 862
    .restart local v10       #skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 864
    const/16 v20, 0x7

    sub-int v20, v20, v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_59e

    .line 865
    const-wide/16 v20, 0x7

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 848
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v10           #skew:I
    .end local v17           #useWeekYear:Z
    :cond_841
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_7a6

    .line 859
    .restart local v4       #days:J
    .restart local v17       #useWeekYear:Z
    :cond_847
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .restart local v3       #dayOfWeek:I
    goto :goto_7e2

    .line 867
    .end local v3           #dayOfWeek:I
    :cond_850
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_8b6

    .line 868
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_89f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_896

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v21

    if-eqz v21, :cond_89c

    const/16 v21, 0x1

    :goto_88a
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x16d

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_89f

    .line 871
    :cond_896
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 868
    :cond_89c
    const/16 v21, 0x0

    goto :goto_88a

    .line 873
    :cond_89f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 874
    :cond_8b6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_59e

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 996
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-nez v0, :cond_8

    move v0, v4

    .line 1002
    .end local p1
    :goto_7
    return v0

    .line 999
    .restart local p1
    :cond_8
    if-ne p1, p0, :cond_c

    move v0, v5

    .line 1000
    goto :goto_7

    .line 1002
    :cond_c
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1
    iget-wide v2, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    move v0, v5

    goto :goto_7

    :cond_1e
    move v0, v4

    goto :goto_7
.end method

.method public getActualMaximum(I)I
    .registers 13
    .parameter "field"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1017
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    .local v4, value:I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_10

    move v5, v4

    .line 1073
    :goto_f
    return v5

    .line 1021
    :cond_10
    packed-switch p1, :pswitch_data_a8

    .line 1028
    :goto_13
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1029
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    .line 1030
    .local v1, orgTime:J
    const/4 v3, 0x0

    .line 1031
    .local v3, result:I
    packed-switch p1, :pswitch_data_b0

    .line 1072
    :cond_1c
    :goto_1c
    :pswitch_1c
    iput-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    move v5, v3

    .line 1073
    goto :goto_f

    .line 1024
    .end local v1           #orgTime:J
    .end local v3           #result:I
    :pswitch_20
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    goto :goto_13

    .line 1033
    .restart local v1       #orgTime:J
    .restart local v3       #result:I
    :pswitch_23
    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1034
    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1035
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1036
    if-ne v3, v7, :cond_3d

    .line 1037
    const/16 v5, 0x18

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1038
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1040
    :cond_3d
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_1c

    .line 1043
    :pswitch_40
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1044
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1045
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_1c

    .line 1048
    :pswitch_4f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    goto :goto_f

    .line 1050
    :pswitch_54
    iget-object v5, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v5, v5, v7

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v5

    goto :goto_f

    .line 1052
    :pswitch_5d
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v3, v5, v6

    .line 1054
    goto :goto_1c

    .line 1056
    :pswitch_71
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1057
    .local v0, clone:Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_99

    .line 1058
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1062
    :goto_85
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1063
    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1064
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1065
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1060
    :cond_99
    const-wide/high16 v5, -0x8000

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_85

    .line 1069
    .end local v0           #clone:Ljava/util/GregorianCalendar;
    :pswitch_9f
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    goto/16 :goto_1c

    .line 1021
    nop

    :pswitch_data_a8
    .packed-switch 0x3
        :pswitch_20
        :pswitch_20
    .end packed-switch

    .line 1031
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_1c
        :pswitch_23
        :pswitch_40
        :pswitch_4f
        :pswitch_54
        :pswitch_1c
        :pswitch_5d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_9f
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1087
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1100
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 4

    .prologue
    .line 1110
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .registers 9
    .parameter "field"

    .prologue
    .line 1125
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v5, -0xb1d069b5400L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1e

    .line 1127
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    .line 1128
    .local v1, currentTimeInMillis:J
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1129
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 1130
    .local v0, actual:I
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    move v3, v0

    .line 1133
    .end local v0           #actual:I
    .end local v1           #currentTimeInMillis:J
    :goto_1d
    return v3

    :cond_1e
    sget-object v3, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v3, v3, p1

    goto :goto_1d
.end method

.method public getMaximum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1146
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1158
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1220
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .registers 5
    .parameter "year"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1233
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v0, :cond_16

    .line 1234
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_12
    move v0, v2

    .line 1237
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 1234
    goto :goto_13

    .line 1237
    :cond_16
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_13

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method public roll(II)V
    .registers 16
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v9, 0x7

    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 1276
    if-nez p2, :cond_6

    .line 1375
    :goto_5
    return-void

    .line 1279
    :cond_6
    if-ltz p1, :cond_c

    const/16 v8, 0xf

    if-lt p1, v8, :cond_12

    .line 1280
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1283
    :cond_12
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1285
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1287
    const/4 v3, -0x1

    .line 1288
    .local v3, max:I
    packed-switch p1, :pswitch_data_182

    .line 1371
    :cond_1c
    :goto_1c
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2e

    .line 1372
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int/2addr v8, v11

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1374
    :cond_2e
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_5

    .line 1290
    :pswitch_32
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1291
    goto :goto_1c

    .line 1293
    :pswitch_37
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    .line 1294
    .local v2, days:I
    const/4 v1, 0x6

    .line 1295
    .local v1, day:I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    sub-int/2addr v9, v11

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1297
    .local v5, mod:I
    sub-int v8, v2, v11

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1298
    .local v4, maxWeeks:I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int/2addr v8, v11

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1299
    .local v6, newWeek:I
    if-ne v6, v4, :cond_88

    .line 1300
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v6, v8

    mul-int/lit8 v0, v8, 0x7

    .line 1301
    .local v0, addDays:I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    if-le v8, v0, :cond_82

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    add-int/2addr v8, v0

    if-le v8, v2, :cond_82

    .line 1302
    invoke-virtual {p0, p1, v11}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1c

    .line 1304
    :cond_82
    sub-int v8, v6, v11

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1c

    .line 1306
    .end local v0           #addDays:I
    :cond_88
    if-ne v6, v11, :cond_aa

    .line 1307
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    sub-int/2addr v8, v11

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1308
    .local v7, week:I
    if-le v7, v11, :cond_a5

    .line 1309
    invoke-virtual {p0, p1, v11}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1311
    :cond_a5
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1314
    .end local v7           #week:I
    :cond_aa
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1318
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_af
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    .line 1319
    .restart local v2       #days:I
    const/4 v1, 0x5

    .line 1320
    .restart local v1       #day:I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    sub-int/2addr v9, v11

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1322
    .restart local v5       #mod:I
    sub-int v8, v2, v11

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1323
    .restart local v4       #maxWeeks:I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int/2addr v8, v11

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1324
    .restart local v6       #newWeek:I
    if-ne v6, v4, :cond_f6

    .line 1325
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, p1

    sub-int v9, v6, v9

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_f1

    .line 1326
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1328
    :cond_f1
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1330
    :cond_f6
    if-ne v6, v11, :cond_118

    .line 1331
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    sub-int/2addr v8, v11

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1332
    .restart local v7       #week:I
    if-le v7, v11, :cond_113

    .line 1333
    invoke-virtual {p0, v1, v11}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1335
    :cond_113
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1338
    .end local v7           #week:I
    :cond_118
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1342
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_11d
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v3

    .line 1343
    goto/16 :goto_1c

    .line 1345
    :pswitch_123
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v3

    .line 1346
    goto/16 :goto_1c

    .line 1348
    :pswitch_12d
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1349
    const/4 v8, 0x4

    iput v8, p0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    goto/16 :goto_1c

    .line 1352
    :pswitch_136
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v12

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    iget-object v10, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v10, v10, v12

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    sub-int/2addr v8, v11

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v3, v8, 0x1

    .line 1353
    goto/16 :goto_1c

    .line 1363
    :pswitch_14f
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    add-int/2addr v8, p2

    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    aget v9, v9, p1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1364
    const/4 v8, 0x2

    if-ne p1, v8, :cond_177

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v12

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    if-le v8, v9, :cond_177

    .line 1365
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    invoke-virtual {p0, v12, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1366
    :cond_177
    const/16 v8, 0x9

    if-ne p1, v8, :cond_1c

    .line 1367
    const/16 v8, 0xa

    iput v8, p0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    goto/16 :goto_1c

    .line 1288
    nop

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_14f
        :pswitch_32
        :pswitch_14f
        :pswitch_37
        :pswitch_af
        :pswitch_11d
        :pswitch_123
        :pswitch_12d
        :pswitch_136
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
    .end packed-switch
.end method

.method public roll(IZ)V
    .registers 4
    .parameter "field"
    .parameter "increment"

    .prologue
    .line 1394
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1395
    return-void

    .line 1394
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1439
    invoke-super {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1440
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1441
    return-void
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 9
    .parameter "date"

    .prologue
    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1404
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 1405
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1406
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1407
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1408
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_26

    .line 1409
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int v2, v5, v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1411
    :cond_26
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 1413
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1414
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 1415
    .local v1, dayOfYear:I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_51

    .line 1416
    sub-int v2, v1, v5

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 1417
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1422
    :goto_4e
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1423
    return-void

    .line 1419
    :cond_51
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1420
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_4e
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1445
    invoke-super {p0, p1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1447
    return-void
.end method
