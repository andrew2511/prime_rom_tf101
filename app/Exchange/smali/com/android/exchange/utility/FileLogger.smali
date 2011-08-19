.class public Lcom/android/exchange/utility/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/android/exchange/utility/FileLogger;

.field public static LOG_FILE_NAME:Ljava/lang/String;

.field private static sLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 29
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized log(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 58
    const-class v1, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "Exception"

    const-string v3, "Stack trace follows..."

    invoke-static {v2, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v2, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "prefix"
    .parameter "str"

    .prologue
    const/16 v10, 0xa

    .line 68
    const-class v7, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    if-nez v8, :cond_0

    .line 69
    new-instance v8, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v8}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v8, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 70
    const-string v8, "Logger"

    const-string v9, "\r\n\r\n --- New Log ---"

    invoke-static {v8, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 73
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 74
    .local v2, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 75
    .local v3, min:I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 78
    .local v6, sec:I
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v8, 0x100

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 79
    .local v5, sb:Ljava/lang/StringBuffer;
    const/16 v8, 0x5b

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    if-ge v3, v10, :cond_1

    .line 83
    const/16 v8, 0x30

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    if-ge v6, v10, :cond_2

    .line 87
    const/16 v8, 0x30

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    const-string v8, "] "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    if-eqz p0, :cond_3

    .line 92
    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v8, "| "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, s:Ljava/lang/String;
    sget-object v8, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_4

    .line 101
    :try_start_1
    sget-object v8, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v8, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 102
    sget-object v8, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_4
    :goto_0
    monitor-exit v7

    return-void

    .line 103
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 105
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    new-instance v8, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v8}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v8, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 108
    sget-object v8, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_4

    .line 110
    :try_start_3
    const-string v8, "FileLogger"

    const-string v9, "Exception writing log; recreating..."

    invoke-static {v8, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v8

    goto :goto_0

    .line 68
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #sec:I
    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8
.end method
