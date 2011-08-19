.class public Lcom/google/android/finsky/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final ISO8601_DATE_FORMAT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/DateUtils;->DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized formatDisplayDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 42
    const-class v0, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/finsky/utils/DateUtils;->DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iso8601Date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 31
    const-class v1, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/DateUtils;->formatDisplayDate(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    :goto_0
    monitor-exit v1

    return-object v2

    .line 32
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 34
    .local v0, e:Ljava/text/ParseException;
    :try_start_1
    const-string v2, "^\\d\\d\\d\\d$"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
