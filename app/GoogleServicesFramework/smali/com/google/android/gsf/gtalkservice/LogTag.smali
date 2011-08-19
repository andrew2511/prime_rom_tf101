.class public Lcom/google/android/gsf/gtalkservice/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static sDebug:Z

.field public static sDebugConnection:Z

.field public static sDebugPresence:Z

.field public static sDebugRmq:Z

.field public static sDebugWakeLock:Z

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    .line 35
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    .line 36
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    .line 37
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    .line 38
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    .line 39
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMessageType(Lcom/google/common/io/protocol/ProtoBufType;Z)I
    .locals 2
    .parameter "type"
    .parameter "isSent"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, messageType:I
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_2

    .line 155
    const/4 v0, 0x7

    .line 176
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 180
    mul-int/lit8 v0, v0, -0x1

    .line 182
    :cond_1
    return v0

    .line 156
    :cond_2
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_3

    .line 157
    const/16 v0, 0x8

    goto :goto_0

    .line 158
    :cond_3
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_5

    .line 160
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_5
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_6

    .line 162
    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :cond_6
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq p0, v1, :cond_7

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_8

    .line 165
    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    .line 166
    :cond_8
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_9

    .line 167
    const/4 v0, 0x4

    goto :goto_0

    .line 168
    :cond_9
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_a

    .line 169
    const/4 v0, 0x3

    goto :goto_0

    .line 170
    :cond_a
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_b

    .line 171
    const/16 v0, 0x9

    goto :goto_0

    .line 172
    :cond_b
    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne p0, v1, :cond_0

    .line 173
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static logConnectionClosed(III)V
    .locals 5
    .parameter "error"
    .parameter "networkType"
    .parameter "connDuration"

    .prologue
    .line 113
    shl-int/lit8 v1, p1, 0x8

    add-int v0, v1, p0

    .line 114
    .local v0, status:I
    const v1, 0x31ce3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 115
    return-void
.end method

.method public static logConnectionEvent(IIII)V
    .locals 3
    .parameter "eventType"
    .parameter "state"
    .parameter "error"
    .parameter "networkState"

    .prologue
    .line 98
    shl-int/lit8 v1, p0, 0x18

    shl-int/lit8 v2, p1, 0x10

    add-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    add-int/2addr v1, v2

    add-int v0, v1, p3

    .line 101
    .local v0, status:I
    const v1, 0x31ce2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 102
    return-void
.end method

.method public static logEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 93
    const v0, 0x31ce1

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 94
    return-void
.end method

.method public static logHeartbeatReset(IILjava/lang/String;)V
    .locals 5
    .parameter "interval"
    .parameter "networkType"
    .parameter "hostIpAddr"

    .prologue
    .line 126
    shl-int/lit8 v1, p1, 0x10

    add-int v0, v1, p0

    .line 127
    .local v0, interval_and_nt:I
    const v1, 0x31ce4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 128
    return-void
.end method

.method public static logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V
    .locals 5
    .parameter "type"
    .parameter "persistentId"
    .parameter "streamId"
    .parameter "lastStreamId"
    .parameter "isSent"

    .prologue
    .line 141
    invoke-static {p0, p4}, Lcom/google/android/gsf/gtalkservice/LogTag;->getMessageType(Lcom/google/common/io/protocol/ProtoBufType;Z)I

    move-result v0

    .line 143
    .local v0, messageType:I
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const v1, 0x31ce5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static queryLoggingLevel()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 42
    const-string v0, "GTalkService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    .line 43
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    .line 44
    const-string v0, "GTalkService/c"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    .line 45
    const-string v0, "GTalkService/p"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    .line 46
    const-string v0, "Rmq"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    .line 47
    const-string v0, "GTalkService/wake"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    .line 48
    return-void
.end method
