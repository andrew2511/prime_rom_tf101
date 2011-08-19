.class public Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;
.super Ljava/lang/Object;
.source "StopwatchStats.java"


# static fields
.field private static instancesByName:Ljava/util/Hashtable;


# instance fields
.field private clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private count:I

.field private final eventType:S

.field private last:I

.field private logStatus:Ljava/lang/String;

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;

.field private start:J

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->instancesByName:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/Clock;Ljava/lang/String;Ljava/lang/String;S)V
    .registers 7
    .parameter "clock"
    .parameter "name"
    .parameter "logStatus"
    .parameter "eventType"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x7fffffff

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    .line 88
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 89
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    .line 91
    iput-short p4, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    .line 92
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->instancesByName:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;S)V
    .registers 5
    .parameter "name"
    .parameter "logStatus"
    .parameter "eventType"

    .prologue
    .line 114
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Landroid_maps_conflict_avoidance/com/google/common/Clock;Ljava/lang/String;Ljava/lang/String;S)V

    .line 115
    return-void
.end method

.method private addSample(I)V
    .registers 6
    .parameter "msec"

    .prologue
    .line 149
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->last:I

    .line 150
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    .line 151
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    .line 152
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    if-le v0, p1, :cond_14

    .line 153
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    .line 155
    :cond_14
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    if-ge v0, p1, :cond_1a

    .line 156
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    .line 158
    :cond_1a
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-short v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 159
    iget-short v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->eventType:S

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->logStatus:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 161
    :cond_3d
    return-void
.end method

.method private getCurrentTime()J
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAverage()I
    .registers 5

    .prologue
    .line 170
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    if-lez v0, :cond_13

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getLast()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->last:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->count:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->min:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public start()V
    .registers 3

    .prologue
    .line 128
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    .line 129
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 133
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 134
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->addSample(I)V

    .line 135
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start:J

    .line 137
    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 198
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_13
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getAverage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 206
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->getLast()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 208
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
