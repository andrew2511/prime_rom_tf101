.class public abstract Lcom/android/commands/monkey/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# static fields
.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .registers 5
    .parameter "time"

    .prologue
    .line 37
    const-class v0, Lcom/android/commands/monkey/MonkeyUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 38
    sget-object v1, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method
