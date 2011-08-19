.class public Lcom/google/mobile/common/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/common/Log$PreferenceLogEventStore;,
        Lcom/google/mobile/common/Log$LogEventStore;,
        Lcom/google/mobile/common/Log$ThrowableListener;,
        Lcom/google/mobile/common/Log$StandardErrorPrinter;,
        Lcom/google/mobile/common/Log$OnScreenPrinter;,
        Lcom/google/mobile/common/Log$Printer;,
        Lcom/google/mobile/common/Log$LogSaver;
    }
.end annotation


# static fields
.field private static final START_TIME:J

.field private static entryBuffer:Ljava/lang/StringBuffer;

.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static final logEntries:Ljava/util/Vector;

.field private static logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

.field private static logMemory:Z

.field private static logSaver:Lcom/google/mobile/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static onScreenPrinter:Lcom/google/mobile/common/Log$OnScreenPrinter;

.field private static printer:Lcom/google/mobile/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Lcom/google/mobile/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/mobile/common/Log;->START_TIME:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/mobile/common/Log;->logEntries:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/mobile/common/Log;->timers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mobile/common/Log;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    sput v2, Lcom/google/mobile/common/Log;->throwableCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/mobile/common/Log;->lastEventTimeMillis:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mobile/common/Log;->logTime:Z

    sput-boolean v2, Lcom/google/mobile/common/Log;->logThread:Z

    sput-boolean v2, Lcom/google/mobile/common/Log;->logMemory:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/mobile/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/google/mobile/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/google/mobile/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/google/mobile/common/Log;->printer:Lcom/google/mobile/common/Log$Printer;

    sput-boolean v2, Lcom/google/mobile/common/Log;->isExplicitClearForTest:Z

    sput-boolean v2, Lcom/google/mobile/common/Log;->isEventLoggingEnabledForTest:Z

    new-instance v0, Lcom/google/mobile/common/Log$PreferenceLogEventStore;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, Lcom/google/mobile/common/Log$PreferenceLogEventStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-wide/32 v5, 0x63ff9c

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    sget-object v0, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-interface {v2}, Lcom/google/mobile/common/Log$LogEventStore;->readEvents()[B

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/16 v4, 0x258

    if-gt v3, v4, :cond_1

    sget-wide v3, Lcom/google/mobile/common/Log;->lastEventTimeMillis:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :cond_1
    if-nez v2, :cond_4

    invoke-static {v0, v1}, Lcom/google/mobile/common/Log;->resetPersistentEventLog(J)V

    :cond_2
    :goto_1
    sget-object v2, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-interface {v2}, Lcom/google/mobile/common/Log$LogEventStore;->readEvents()[B

    move-result-object v2

    :cond_3
    array-length v3, v2

    if-le v3, v7, :cond_5

    aget-byte v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x2

    array-length v6, v2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/DataOutputStream;->write([BII)V

    int-to-short v2, p0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v2, Lcom/google/mobile/common/Log;->lastEventTimeMillis:J

    sub-long v2, v0, v2

    const-wide/32 v6, 0x63ff9c

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v2, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/mobile/common/Log$LogEventStore;->writeEvents([B)V

    sput-wide v0, Lcom/google/mobile/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/google/mobile/common/Log;->logSaver:Lcom/google/mobile/common/Log$LogSaver;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v8, v2, v0, v1}, Lcom/google/mobile/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_2
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x12c

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/mobile/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v1, :cond_2

    sput-object p0, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    :goto_1
    sget-object v1, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    sget-object v1, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/mobile/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/common/Log;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/mobile/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/mobile/common/Log;->onScreenPrinter:Lcom/google/mobile/common/Log$OnScreenPrinter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mobile/common/Log;->onScreenPrinter:Lcom/google/mobile/common/Log$OnScreenPrinter;

    invoke-interface {v0, p0}, Lcom/google/mobile/common/Log$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .locals 3

    sget-object v0, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/google/mobile/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/mobile/common/Log$LogEventStore;->writeEvents([B)V

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/mobile/common/Log$LogEventStore;->writeEvents([B)V

    throw v1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    sget-object v0, Lcom/google/mobile/common/Log;->throwableListener:Lcom/google/mobile/common/Log$ThrowableListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mobile/common/Log;->throwableListener:Lcom/google/mobile/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/mobile/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static setLogSaver(Lcom/google/mobile/common/Log$LogSaver;)V
    .locals 0

    sput-object p0, Lcom/google/mobile/common/Log;->logSaver:Lcom/google/mobile/common/Log$LogSaver;

    return-void
.end method

.method public static setPrinter(Lcom/google/mobile/common/Log$Printer;)V
    .locals 0

    sput-object p0, Lcom/google/mobile/common/Log;->printer:Lcom/google/mobile/common/Log$Printer;

    return-void
.end method

.method public static uploadEventLog(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/mobile/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/mobile/common/Log;->logEventStore:Lcom/google/mobile/common/Log$LogEventStore;

    invoke-interface {v0}, Lcom/google/mobile/common/Log$LogEventStore;->readEvents()[B

    move-result-object v0

    sget-object v1, Lcom/google/mobile/common/Log;->logSaver:Lcom/google/mobile/common/Log$LogSaver;

    invoke-interface {v1, p0, p1, v0}, Lcom/google/mobile/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/mobile/common/Log;->resetPersistentEventLog(J)V

    return-object v0
.end method
