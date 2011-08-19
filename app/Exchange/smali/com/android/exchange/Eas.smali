.class public Lcom/android/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# static fields
.field public static DEBUG:Z

.field public static FILE_LOG:Z

.field public static PARSER_LOG:Z

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 31
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 34
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 35
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 36
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .parameter "version"

    .prologue
    .line 101
    const-string v0, "2.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-wide/high16 v0, 0x4004

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-string v0, "12.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-wide/high16 v0, 0x4028

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "12.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-wide v0, 0x4028333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal protocol version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserDebug(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_2

    .line 89
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 90
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 91
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 92
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 95
    :cond_1
    const-string v0, "Eas Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_6

    const-string v2, "User "

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v2, :cond_7

    const-string v2, "Parser "

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_8

    const-string v2, "File"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 89
    goto :goto_0

    :cond_4
    move v0, v2

    .line 90
    goto :goto_1

    :cond_5
    move v0, v2

    .line 91
    goto :goto_2

    .line 95
    :cond_6
    const-string v2, ""

    goto :goto_3

    :cond_7
    const-string v2, ""

    goto :goto_4

    :cond_8
    const-string v2, ""

    goto :goto_5
.end method
