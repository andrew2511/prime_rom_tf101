.class public Landroid_maps_conflict_avoidance/com/google/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;
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

.field private static logMemory:Z

.field private static logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

.field private static printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->START_TIME:J

    .line 123
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logEntries:Ljava/util/Vector;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->timers:Ljava/util/Hashtable;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    .line 149
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableCount:I

    .line 158
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logTime:Z

    .line 168
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThread:Z

    .line 174
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logMemory:Z

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    .line 188
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

    .line 194
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isExplicitClearForTest:Z

    .line 197
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isEventLoggingEnabledForTest:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "type"
    .parameter "status"
    .parameter "data"

    .prologue
    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 616
    .local v4, timestamp:J
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    .line 617
    .local v1, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string v0, "EVENT_LOG"

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .line 619
    .local v0, oldEvents:[B
    if-eqz v0, :cond_20

    array-length v2, v0

    const/16 v3, 0x258

    if-gt v2, v3, :cond_20

    sget-wide v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    sub-long v2, v4, v2

    const-wide/32 v6, 0x63ff9c

    cmp-long v2, v2, v6

    if-lez v2, :cond_8f

    .line 621
    :cond_20
    if-nez v0, :cond_82

    .line 622
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    .line 633
    .end local v0           #oldEvents:[B
    :cond_25
    :goto_25
    const-string v0, "EVENT_LOG"

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #oldEvents:[B
    move-object v2, v0

    .line 635
    .end local v0           #oldEvents:[B
    .local v2, oldEvents:[B
    :goto_2c
    const/4 v0, 0x0

    .line 636
    .local v0, numEvents:S
    array-length v1, v2

    .end local v1           #store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const/4 v3, 0x2

    if-le v1, v3, :cond_3f

    .line 641
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    .end local v0           #numEvents:S
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 644
    .restart local v0       #numEvents:S
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    int-to-short v1, v0

    .line 645
    .end local v0           #numEvents:S
    .local v1, numEvents:S
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 646
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 649
    .local v3, dos:Ljava/io/DataOutputStream;
    :try_start_4c
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 651
    const/4 v1, 0x2

    array-length v6, v2

    .end local v1           #numEvents:S
    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v3, v2, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 653
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 657
    sget-wide v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    sub-long v1, v4, v1

    const-wide/32 v6, 0x63ff9c

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v6, 0x64

    div-long/2addr v1, v6

    .line 659
    .end local v2           #oldEvents:[B
    .local v1, delta:J
    long-to-int p0, v1

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 660
    .end local p0
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 663
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object p0

    const-string p1, "EVENT_LOG"

    .end local p1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .end local p2
    invoke-interface {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 665
    sput-wide v4, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_80} :catch_8c

    .line 667
    const/4 p0, 0x1

    .line 670
    .end local v1           #delta:J
    :goto_81
    return p0

    .line 626
    .end local v3           #dos:Ljava/io/DataOutputStream;
    .local v0, oldEvents:[B
    .local v1, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_82
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    .end local v0           #oldEvents:[B
    if-eqz v0, :cond_25

    .line 630
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_25

    .line 668
    .end local v1           #store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .end local p0
    .end local p1
    .end local p2
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #dos:Ljava/io/DataOutputStream;
    :catch_8c
    move-exception p0

    .line 670
    .local p0, e:Ljava/io/IOException;
    const/4 p0, 0x0

    goto :goto_81

    .end local v3           #dos:Ljava/io/DataOutputStream;
    .local v0, oldEvents:[B
    .restart local v1       #store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .local p0, type:S
    .restart local p1
    .restart local p2
    :cond_8f
    move-object v2, v0

    .end local v0           #oldEvents:[B
    .restart local v2       #oldEvents:[B
    goto :goto_2c
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x12c

    .line 544
    if-nez p0, :cond_5

    .line 559
    :goto_4
    return-void

    .line 548
    :cond_5
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_8
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 550
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    .line 554
    :goto_e
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_21

    .line 555
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    .line 558
    :cond_21
    monitor-exit v0

    goto :goto_4

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v1

    .line 552
    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23

    goto :goto_e
.end method

.method public static createEventTuple([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "elements"

    .prologue
    .line 730
    array-length v3, p0

    if-nez v3, :cond_6

    .line 731
    const-string v3, ""

    .line 746
    :goto_5
    return-object v3

    .line 734
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 735
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_31

    .line 737
    aget-object v3, p0, v2

    if-eqz v3, :cond_2e

    .line 739
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 740
    .local v1, element:Ljava/lang/StringBuffer;
    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 743
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    .end local v1           #element:Ljava/lang/StringBuffer;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 746
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .registers 1

    .prologue
    .line 947
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "source"
    .parameter "t"

    .prologue
    .line 534
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 536
    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
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

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addThrowableString(Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 519
    return-void
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .registers 2
    .parameter "logString"

    .prologue
    .line 1001
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    if-eqz v0, :cond_9

    .line 1002
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    .line 1004
    :cond_9
    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .registers 8
    .parameter "timestamp"

    .prologue
    .line 932
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 933
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 935
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 936
    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 937
    sput-wide p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_21

    .line 941
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 944
    :goto_20
    return-void

    .line 938
    :catch_21
    move-exception v2

    .line 941
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    goto :goto_20

    :catchall_30
    move-exception v2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    const-string v4, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    throw v2
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4
    .parameter "source"
    .parameter "throwable"
    .parameter "isQuiet"

    .prologue
    .line 963
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    if-eqz v0, :cond_9

    .line 964
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 977
    :cond_9
    return-void
.end method

.method public static setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V
    .registers 1
    .parameter "logSaver"

    .prologue
    .line 751
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    .line 752
    return-void
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .registers 8
    .parameter "immediate"
    .parameter "waitObject"
    .parameter "timestamp"

    .prologue
    .line 793
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .line 795
    .local v0, logBytes:[B
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    invoke-interface {v2, p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v1

    .line 797
    .local v1, uploadTracker:Ljava/lang/Object;
    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    .line 800
    return-object v1
.end method
