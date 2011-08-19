.class public Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;
.super Ljava/lang/Object;
.source "UsageGauge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    }
.end annotation


# static fields
.field private static final PACKET_COUNT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PACKET_SIZE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static sInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 81
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 82
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 83
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 15
    .parameter "out"

    .prologue
    .line 174
    const-class v12, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v12

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transmission statistics: (last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hours)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string v0, "----------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v0

    .line 178
    .local v0, receivedCount:J
    sget-object v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v4

    .line 179
    .local v4, sentCount:J
    add-long v8, v0, v4

    .line 180
    .local v8, totalCount:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packet count (received/sent/total): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    sget-object v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v2

    .line 184
    .local v2, receivedSize:J
    sget-object v6, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v6

    .line 185
    .local v6, sentSize:J
    add-long v10, v2, v6

    .line 186
    .local v10, totalSize:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Packet size (received/sent/total): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Average packet size (received/sent/total): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v0

    .end local v0           #receivedCount:J
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10, v11, v8, v9}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v0, "Packet breakdown by types (type: count/count percentage/size percentage): "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #receivedSize:J
    .end local v4           #sentCount:J
    .end local v6           #sentSize:J
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    .local v0, map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, type:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    check-cast v0, Ljava/util/Map;

    .line 199
    .local v0, countMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    sget-object v3, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 200
    .local v6, sizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #type:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .end local v0           #countMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .local v7, subtype:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    check-cast v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v0

    .line 204
    .local v0, count:J
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v4

    .line 205
    .local v4, size:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #subtype:Ljava/lang/String;
    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " / "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v13, 0x64

    mul-long/2addr v0, v13

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    .end local v0           #count:J
    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v13, 0x64

    mul-long/2addr v4, v13

    invoke-static {v4, v5, v10, v11}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    .end local v4           #size:J
    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #sizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    .end local v8           #totalCount:J
    .end local v10           #totalSize:J
    :catchall_0
    move-exception p0

    .end local p0
    monitor-exit v12

    throw p0

    .line 211
    .restart local v8       #totalCount:J
    .restart local v10       #totalSize:J
    .restart local p0
    :cond_1
    monitor-exit v12

    return-void
.end method

.method private static getDataMessageTarget(Lorg/jivesoftware/smack/packet/DataMessage;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPacketUsageType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    .locals 3
    .parameter "packet"

    .prologue
    .line 132
    if-eqz p0, :cond_a

    .line 134
    instance-of v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    if-eqz v0, :cond_0

    .line 135
    check-cast p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getOriginalPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    .line 137
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_2

    .line 138
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "data message"

    check-cast p0, Lorg/jivesoftware/smack/packet/DataMessage;

    .end local p0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getDataMessageTarget(Lorg/jivesoftware/smack/packet/DataMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-object v0

    .line 142
    .restart local p0
    :cond_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "chat"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/Presence;

    if-nez v0, :cond_3

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v0, :cond_4

    .line 144
    :cond_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "presence"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_6

    .line 146
    instance-of v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;

    if-eqz v0, :cond_5

    .line 147
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "connection"

    const-string v2, "login"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_5
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "iq"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_6
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;

    if-nez v0, :cond_7

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;

    if-eqz v0, :cond_8

    .line 151
    :cond_7
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "connection"

    const-string v2, "login"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_8
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/HttpRequest;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/HttpResponse;

    if-eqz v0, :cond_a

    .line 153
    :cond_9
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "miscellaneous"

    const-string v2, "tunnelled http"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getQuotientString(JJ)Ljava/lang/String;
    .locals 2
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "-"

    .line 169
    :goto_0
    return-object v0

    :cond_0
    div-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized update(Lorg/jivesoftware/smack/packet/Packet;JZ)V
    .locals 7
    .parameter "packet"
    .parameter "size"
    .parameter "received"

    .prologue
    .line 89
    const-class v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getPacketUsageType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    move-result-object v0

    .line 91
    .local v0, type:Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    if-eqz v0, :cond_0

    .line 92
    sget-object v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->subtype:Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    sget-object v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->subtype:Ljava/lang/String;

    invoke-static {v2, v3, v4, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateTotalStats(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v1

    return-void

    .line 89
    .end local v0           #type:Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized updateHeartbeat(JZ)V
    .locals 6
    .parameter "size"
    .parameter "received"

    .prologue
    .line 100
    const-class v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    const-string v2, "connection"

    const-string v3, "heartbeat"

    const-wide/16 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    sget-object v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    const-string v2, "connection"

    const-string v3, "heartbeat"

    invoke-static {v1, v2, v3, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateTotalStats(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter "type"
    .parameter "subtype"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 119
    .local v1, typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/util/TreeMap;

    .end local v1           #typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 121
    .restart local v1       #typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 124
    .local v0, stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .end local v0           #stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    sget-wide v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    .line 126
    .restart local v0       #stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 129
    return-void
.end method

.method private static updateTotalStats(JZ)V
    .locals 3
    .parameter "size"
    .parameter "received"

    .prologue
    const-wide/16 v1, 0x1

    .line 107
    if-eqz p2, :cond_0

    .line 108
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 109
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 112
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    goto :goto_0
.end method
