.class public Lcom/google/android/gm/perf/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/perf/Timer$PerformancePoint;
    }
.end annotation


# static fields
.field private static sPerformanceCollector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/perf/Timer$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/perf/Timer$PerformancePoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/perf/Timer;->sPerformanceCollector:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/perf/Timer;->mPoints:Ljava/util/Map;

    .line 65
    return-void
.end method

.method private static dumpTimings(Ljava/lang/String;IJJ)V
    .locals 5
    .parameter "tag"
    .parameter "numSubIterations"
    .parameter "cpuDurationNanos"
    .parameter "wallDurationMillis"

    .prologue
    .line 161
    const v0, 0x324b2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const-wide/32 v3, 0xf4240

    div-long v3, p2, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 174
    return-void
.end method

.method public static startTiming(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/gm/perf/Timer;->sPerformanceCollector:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    invoke-direct {v1}, Lcom/google/android/gm/perf/Timer$PerformancePoint;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public static stopTiming(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public static stopTiming(Ljava/lang/String;I)V
    .locals 10
    .parameter "tag"
    .parameter "numSubIterations"

    .prologue
    .line 144
    new-instance v6, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    invoke-direct {v6}, Lcom/google/android/gm/perf/Timer$PerformancePoint;-><init>()V

    .line 145
    .local v6, endPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    sget-object v0, Lcom/google/android/gm/perf/Timer;->sPerformanceCollector:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    .line 146
    .local v7, startPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    if-nez v7, :cond_0

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-wide v0, v6, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    iget-wide v8, v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    sub-long v2, v0, v8

    .line 150
    .local v2, cpuDurationNanos:J
    iget-wide v0, v6, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    iget-wide v8, v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    sub-long v4, v0, v8

    .line 152
    .local v4, wallDurationMillis:J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 153
    const-wide/16 v2, 0x1

    :cond_1
    move-object v0, p0

    move v1, p1

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/perf/Timer;->dumpTimings(Ljava/lang/String;IJJ)V

    goto :goto_0
.end method


# virtual methods
.method public dumpResults()V
    .locals 17

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/perf/Timer;->mPoints:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 96
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, tag:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 98
    .local v12, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    const-wide/16 v3, 0x0

    .line 99
    .local v3, cpuDurationNanos:J
    const-wide/16 v5, 0x0

    .line 101
    .local v5, wallDurationMillis:J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    if-ge v9, v2, :cond_0

    .line 102
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    .line 103
    .local v11, startPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    .line 105
    .local v7, endPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    iget-wide v13, v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    iget-wide v15, v11, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    sub-long/2addr v13, v15

    add-long/2addr v3, v13

    .line 106
    iget-wide v13, v7, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    iget-wide v15, v11, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    sub-long/2addr v13, v15

    add-long/2addr v5, v13

    .line 101
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 109
    .end local v7           #endPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    .end local v11           #startPoint:Lcom/google/android/gm/perf/Timer$PerformancePoint;
    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v2, v3, v13

    if-nez v2, :cond_1

    .line 110
    const-wide/16 v3, 0x1

    .line 113
    :cond_1
    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/perf/Timer;->dumpTimings(Ljava/lang/String;IJJ)V

    goto :goto_0

    .line 115
    .end local v1           #tag:Ljava/lang/String;
    .end local v3           #cpuDurationNanos:J
    .end local v5           #wallDurationMillis:J
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;>;"
    .end local v9           #i:I
    .end local v12           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    :cond_2
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/gm/perf/Timer;->mPoints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 87
    new-instance v1, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    invoke-direct {v1}, Lcom/google/android/gm/perf/Timer$PerformancePoint;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/android/gm/perf/Timer;->mPoints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 72
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .restart local v0       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/perf/Timer$PerformancePoint;>;"
    iget-object v1, p0, Lcom/google/android/gm/perf/Timer;->mPoints:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Lcom/google/android/gm/perf/Timer$PerformancePoint;

    invoke-direct {v1}, Lcom/google/android/gm/perf/Timer$PerformancePoint;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    return-void
.end method
