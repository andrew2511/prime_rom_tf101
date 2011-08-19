.class public Lcom/android/server/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 68
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 234
    new-instance v0, Lcom/android/server/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 40
    nop

    :array_2c
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 68
    :array_4e
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 102
    :array_7e
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 115
    :array_92
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    .line 66
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    .line 125
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 126
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 127
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 157
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    .line 254
    iput-boolean p1, p0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    .line 255
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 35
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 341
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 342
    .local v19, pids:[I
    if-nez v19, :cond_51

    const/4 v5, 0x0

    move v11, v5

    .line 343
    .local v11, NP:I
    :goto_c
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 344
    .local v12, NS:I
    const/4 v13, 0x0

    .line 345
    .local v13, curStatsIndex:I
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_12
    if-ge v14, v11, :cond_19

    .line 346
    aget v7, v19, v14

    .line 347
    .local v7, pid:I
    if-gez v7, :cond_57

    .line 348
    move v11, v7

    .line 504
    .end local v7           #pid:I
    :cond_19
    :goto_19
    if-ge v13, v12, :cond_302

    .line 506
    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ProcessStats$Stats;

    .line 507
    .local v22, st:Lcom/android/server/ProcessStats$Stats;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 508
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 509
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 510
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 511
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 512
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    .line 513
    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    add-int/lit8 v12, v12, -0x1

    .line 516
    goto :goto_19

    .line 342
    .end local v11           #NP:I
    .end local v12           #NS:I
    .end local v13           #curStatsIndex:I
    .end local v14           #i:I
    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    .restart local p1
    :cond_51
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move v11, v5

    goto :goto_c

    .line 351
    .end local p1
    .restart local v7       #pid:I
    .restart local v11       #NP:I
    .restart local v12       #NS:I
    .restart local v13       #curStatsIndex:I
    .restart local v14       #i:I
    :cond_57
    if-ge v13, v12, :cond_a9

    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ProcessStats$Stats;

    move-object/from16 v22, p1

    .line 353
    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    :goto_64
    if-eqz v22, :cond_194

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-ne v5, v7, :cond_194

    .line 355
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 356
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    .line 357
    add-int/lit8 v13, v13, 0x1

    .line 362
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_a5

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 365
    .local v25, uptime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v20, v0

    .line 366
    .local v20, procStats:[J
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, v20

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 345
    .end local v20           #procStats:[J
    .end local v25           #uptime:J
    :cond_a5
    :goto_a5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    .line 351
    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_a9
    const/4 v5, 0x0

    move-object/from16 v22, v5

    goto :goto_64

    .line 371
    .restart local v20       #procStats:[J
    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    .restart local v25       #uptime:J
    :cond_ad
    const/4 v5, 0x0

    aget-wide v17, v20, v5

    .line 372
    .local v17, minfaults:J
    const/4 v5, 0x1

    aget-wide v15, v20, v5

    .line 373
    .local v15, majfaults:J
    const/4 v5, 0x2

    aget-wide v27, v20, v5

    .line 374
    .local v27, utime:J
    const/4 v5, 0x3

    aget-wide v23, v20, v5

    .line 376
    .local v23, stime:J
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    cmp-long v5, v27, v5

    if-nez v5, :cond_f1

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    cmp-long v5, v23, v5

    if-nez v5, :cond_f1

    .line 377
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 378
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 379
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 380
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 381
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-eqz v5, :cond_a5

    .line 382
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    goto :goto_a5

    .line 387
    :cond_f1
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-nez v5, :cond_fe

    .line 388
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    .line 391
    :cond_fe
    if-gez p2, :cond_12f

    .line 392
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_12f

    .line 394
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    .line 405
    :cond_12f
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    .line 406
    move-wide/from16 v0, v25

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    .line 407
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 408
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    sub-long v5, v23, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 409
    move-wide/from16 v0, v27

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 410
    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 411
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    move-wide v5, v0

    sub-long v5, v17, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 412
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v5, v0

    sub-long v5, v15, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 413
    move-wide/from16 v0, v17

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 414
    move-wide v0, v15

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    .line 415
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    goto/16 :goto_a5

    .line 421
    .end local v15           #majfaults:J
    .end local v17           #minfaults:J
    .end local v20           #procStats:[J
    .end local v23           #stime:J
    .end local v25           #uptime:J
    .end local v27           #utime:J
    :cond_194
    if-eqz v22, :cond_19d

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-le v5, v7, :cond_2d2

    .line 423
    :cond_19d
    new-instance v22, Lcom/android/server/ProcessStats$Stats;

    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    move v5, v0

    move-object/from16 v0, v22

    move v1, v7

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ProcessStats$Stats;-><init>(IIZ)V

    .line 424
    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p5

    move v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 425
    add-int/lit8 v13, v13, 0x1

    .line 426
    add-int/lit8 v12, v12, 0x1

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 432
    .local v21, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .line 433
    .restart local v20       #procStats:[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    .line 434
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 442
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    .line 443
    const/4 v5, 0x0

    aget-object v5, v21, v5

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 444
    const/4 v5, 0x1

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 445
    const/4 v5, 0x2

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    .line 446
    const/4 v5, 0x3

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 447
    const/4 v5, 0x4

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 460
    :goto_215
    if-gez p2, :cond_2ae

    .line 461
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_246

    .line 463
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    .line 475
    :cond_246
    :goto_246
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 476
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 477
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 478
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 479
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 480
    if-nez p3, :cond_a5

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_a5

    .line 481
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    goto/16 :goto_a5

    .line 454
    :cond_275
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unknown process pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 456
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 457
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_215

    .line 466
    :cond_2ae
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_246

    .line 467
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 468
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    goto/16 :goto_246

    .line 487
    .end local v20           #procStats:[J
    .end local v21           #procStatsString:[Ljava/lang/String;
    :cond_2d2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 488
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 489
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 490
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 491
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 492
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    .line 493
    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    add-int/lit8 v12, v12, -0x1

    .line 500
    add-int/lit8 v14, v14, -0x1

    .line 501
    goto/16 :goto_a5

    .line 518
    .end local v7           #pid:I
    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_302
    return-object v19
.end method

.method private getCpuSpeedTimes([J)[J
    .registers 16
    .parameter "out"

    .prologue
    const/16 v13, 0x14

    const/4 v12, 0x0

    .line 557
    move-object v6, p1

    .line 558
    .local v6, tempTimes:[J
    iget-object v5, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    .line 559
    .local v5, tempSpeeds:[J
    const/16 v0, 0x14

    .line 560
    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_e

    .line 561
    new-array v6, v13, [J

    .line 562
    new-array v5, v13, [J

    .line 564
    :cond_e
    const/4 v3, 0x0

    .line 565
    .local v3, speed:I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_3c

    .line 568
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1e
    :goto_1e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 570
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 572
    .local v7, token:Ljava/lang/String;
    :try_start_28
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 573
    .local v8, val:J
    aput-wide v8, v5, v3

    .line 574
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 575
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 576
    aput-wide v8, v6, v3
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_38} :catch_4d

    .line 577
    add-int/lit8 v3, v3, 0x1

    .line 578
    if-ne v3, v13, :cond_1e

    .line 588
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_3c
    if-nez p1, :cond_4c

    .line 589
    new-array p1, v3, [J

    .line 590
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    .line 591
    iget-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    :cond_4c
    return-object p1

    .line 583
    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    :catch_4d
    move-exception v10

    move-object v2, v10

    .line 584
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 9
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    const/4 v5, 0x1

    .line 831
    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 832
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 834
    :cond_1b
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3e

    .line 836
    move-object v2, v0

    .line 837
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 838
    .local v1, i:I
    if-lez v1, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_3e

    .line 839
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 842
    .end local v1           #i:I
    :cond_3e
    if-nez v2, :cond_42

    .line 843
    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 846
    .end local v0           #cmdName:Ljava/lang/String;
    :cond_42
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 847
    :cond_4e
    iput-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 848
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    .line 850
    :cond_58
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 21
    .parameter "pw"
    .parameter "prefix"
    .parameter "pid"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    .line 756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    if-nez p5, :cond_6

    const/4 p5, 0x1

    .line 758
    :cond_6
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 759
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    if-ltz p3, :cond_24

    .line 761
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 762
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    :cond_24
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 767
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 769
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    if-lez p8, :cond_5a

    .line 771
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    move/from16 v0, p8

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 773
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    :cond_5a
    if-lez p9, :cond_70

    .line 776
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    move/from16 v0, p9

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 778
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    :cond_70
    if-lez p10, :cond_86

    .line 781
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    move/from16 v0, p10

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 783
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    :cond_86
    if-gtz p11, :cond_8a

    if-lez p12, :cond_b3

    .line 786
    :cond_8a
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    if-lez p11, :cond_a1

    .line 788
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    move-object v0, p1

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 790
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    :cond_a1
    if-lez p12, :cond_b3

    .line 793
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    move-object v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 795
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    :cond_b3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 799
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 16
    .parameter "pw"
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const-wide/16 v8, 0xa

    .line 741
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 742
    .local v4, thousands:J
    div-long v0, v4, v8

    .line 743
    .local v0, hundreds:J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 744
    cmp-long v6, v0, v8

    if-gez v6, :cond_22

    .line 745
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 746
    .local v2, remainder:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_22

    .line 747
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 748
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 751
    .end local v2           #remainder:J
    :cond_22
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 802
    const/4 v1, 0x0

    .line 804
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_44

    .line 805
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_6
    iget-object v4, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 806
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 808
    if-lez v3, :cond_2c

    .line 810
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v3, :cond_1a

    .line 811
    iget-object v4, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    aget-byte v4, v4, v0

    if-ne v4, p2, :cond_29

    .line 815
    :cond_1a
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_51
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_22} :catch_57
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_54

    .line 820
    if-eqz v2, :cond_27

    .line 822
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_4d

    :cond_27
    :goto_27
    move-object v1, v2

    .line 827
    .end local v0           #i:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_28
    return-object v4

    .line 810
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 820
    .end local v0           #i:I
    :cond_2c
    if-eqz v2, :cond_31

    .line 822
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4f

    :cond_31
    :goto_31
    move-object v1, v2

    .line 827
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_32
    :goto_32
    const/4 v4, 0x0

    goto :goto_28

    .line 820
    :catchall_34
    move-exception v4

    :goto_35
    if-eqz v1, :cond_3a

    .line 822
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_4b

    .line 820
    :cond_3a
    :goto_3a
    throw v4

    .line 817
    :catch_3b
    move-exception v4

    .line 820
    :goto_3c
    if-eqz v1, :cond_32

    .line 822
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_32

    .line 823
    :catch_42
    move-exception v4

    goto :goto_32

    .line 818
    :catch_44
    move-exception v4

    .line 820
    :goto_45
    if-eqz v1, :cond_32

    .line 822
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_42

    goto :goto_32

    .line 823
    :catch_4b
    move-exception v5

    goto :goto_3a

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    :catch_4d
    move-exception v5

    goto :goto_27

    .end local v0           #i:I
    :catch_4f
    move-exception v4

    goto :goto_31

    .line 820
    .end local v3           #len:I
    :catchall_51
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_35

    .line 818
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_54
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_45

    .line 817
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_57
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_3c
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 627
    iget-boolean v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_65

    .line 628
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 629
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 630
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v1, :cond_5c

    .line 631
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ProcessStats$Stats;

    .line 632
    .local v4, stats:Lcom/android/server/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/server/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_59

    .line 633
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_59

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_59

    .line 635
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, M:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3c
    if-ge v3, v0, :cond_52

    .line 638
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ProcessStats$Stats;

    .line 639
    .local v5, tstats:Lcom/android/server/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/server/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 640
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 643
    .end local v5           #tstats:Lcom/android/server/ProcessStats$Stats;
    :cond_52
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 630
    .end local v0           #M:I
    .end local v3           #j:I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 647
    .end local v4           #stats:Lcom/android/server/ProcessStats$Stats;
    :cond_5c
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 648
    iput-boolean v8, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 650
    .end local v1           #N:I
    .end local v2           #i:I
    :cond_65
    return-void
.end method

.method public final countStats()I
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .registers 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->buildWorkingProcs()V

    .line 662
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 10
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 524
    .local v1, statsData:[J
    sget-object v4, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 526
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .local v2, time:J
    move-wide v4, v2

    .line 530
    .end local v2           #time:J
    :goto_2d
    return-wide v4

    :cond_2e
    const-wide/16 v4, 0x0

    goto :goto_2d
.end method

.method public getLastCpuSpeedTimes()[J
    .registers 9

    .prologue
    .line 539
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_21

    .line 540
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    .line 541
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_42

    .line 543
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 546
    .end local v0           #i:I
    :cond_21
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 547
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_27
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_42

    .line 548
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 549
    .local v1, temp:J
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 550
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 553
    .end local v1           #temp:J
    :cond_42
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .prologue
    .line 614
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 602
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 598
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ProcessStats$Stats;
    .registers 3
    .parameter "index"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public final getTotalCpuPercent()F
    .registers 4

    .prologue
    .line 622
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;
    .registers 3
    .parameter "index"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 267
    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->update()V

    .line 268
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 258
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 4

    .prologue
    .line 670
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 671
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 672
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 674
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 676
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 678
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 33
    .parameter "now"

    .prologue
    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ProcessStats;->buildWorkingProcs()V

    .line 684
    new-instance v27, Ljava/io/StringWriter;

    invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V

    .line 685
    .local v27, sw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 687
    .local v4, pw:Ljava/io/PrintWriter;
    const-string v3, "CPU usage from "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    cmp-long v3, p1, v5

    if-lez v3, :cond_156

    .line 689
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    sub-long v5, p1, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 690
    const-string v3, "ms to "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    sub-long v5, p1, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 692
    const-string v3, "ms ago"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    :goto_3c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v7, v0

    sub-long v24, v5, v7

    .line 701
    .local v24, sampleTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleRealTime:J

    move-wide v7, v0

    sub-long v22, v5, v7

    .line 702
    .local v22, sampleRealTime:J
    const-wide/16 v5, 0x64

    mul-long v5, v5, v24

    div-long v20, v5, v22

    .line 703
    .local v20, percAwake:J
    const-wide/16 v5, 0x64

    cmp-long v3, v20, v5

    if-eqz v3, :cond_70

    .line 704
    const-string v3, " with "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 706
    const-string v3, "% awake"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    :cond_70
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    move v5, v0

    add-int v28, v3, v5

    .line 716
    .local v28, totalTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 717
    .local v17, N:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_a4
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_19a

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/ProcessStats$Stats;

    .line 719
    .local v26, st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v3, v0

    if-eqz v3, :cond_176

    const-string v3, " +"

    move-object v5, v3

    :goto_c2
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v6, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    move-wide v8, v0

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v3, v8

    div-int/lit8 v8, v3, 0xa

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v9, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    move v14, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move v15, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 722
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-nez v3, :cond_196

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    if-eqz v3, :cond_196

    .line 723
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 724
    .local v16, M:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_10c
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_196

    .line 725
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/ProcessStats$Stats;

    .line 726
    .local v29, tst:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v3, v0

    if-eqz v3, :cond_187

    const-string v3, "   +"

    move-object v5, v3

    :goto_12a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v6, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    move-wide v8, v0

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v3, v8

    div-int/lit8 v8, v3, 0xa

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v9, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 724
    add-int/lit8 v19, v19, 0x1

    goto :goto_10c

    .line 694
    .end local v16           #M:I
    .end local v17           #N:I
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #percAwake:J
    .end local v22           #sampleRealTime:J
    .end local v24           #sampleTime:J
    .end local v26           #st:Lcom/android/server/ProcessStats$Stats;
    .end local v28           #totalTime:I
    .end local v29           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_156
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    sub-long v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 695
    const-string v3, "ms to "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    sub-long v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 697
    const-string v3, "ms later"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 719
    .restart local v17       #N:I
    .restart local v18       #i:I
    .restart local v20       #percAwake:J
    .restart local v22       #sampleRealTime:J
    .restart local v24       #sampleTime:J
    .restart local v26       #st:Lcom/android/server/ProcessStats$Stats;
    .restart local v28       #totalTime:I
    :cond_176
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-eqz v3, :cond_182

    const-string v3, " -"

    move-object v5, v3

    goto/16 :goto_c2

    :cond_182
    const-string v3, "  "

    move-object v5, v3

    goto/16 :goto_c2

    .line 726
    .restart local v16       #M:I
    .restart local v19       #j:I
    .restart local v29       #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_187
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-eqz v3, :cond_192

    const-string v3, "   -"

    move-object v5, v3

    goto :goto_12a

    :cond_192
    const-string v3, "    "

    move-object v5, v3

    goto :goto_12a

    .line 717
    .end local v16           #M:I
    .end local v19           #j:I
    .end local v29           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_196
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a4

    .line 734
    .end local v26           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_19a
    const-string v5, ""

    const/4 v6, -0x1

    const-string v7, "TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move/from16 v8, v28

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 737
    invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update()V
    .registers 29

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleRealTime:J

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v23, v0

    .line 278
    .local v23, sysCpu:[J
    const-string v5, "/proc/stat"

    sget-object v6, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v23

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 281
    const/4 v5, 0x0

    aget-wide v5, v23, v5

    const/4 v7, 0x1

    aget-wide v7, v23, v7

    add-long v26, v5, v7

    .line 283
    .local v26, usertime:J
    const/4 v5, 0x2

    aget-wide v24, v23, v5

    .line 285
    .local v24, systemtime:J
    const/4 v5, 0x3

    aget-wide v11, v23, v5

    .line 287
    .local v11, idletime:J
    const/4 v5, 0x4

    aget-wide v13, v23, v5

    .line 288
    .local v13, iowaittime:J
    const/4 v5, 0x5

    aget-wide v15, v23, v5

    .line 289
    .local v15, irqtime:J
    const/4 v5, 0x6

    aget-wide v21, v23, v5

    .line 291
    .local v21, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    move-wide v5, v0

    sub-long v5, v26, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelUserTime:I

    .line 292
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    move-wide v5, v0

    sub-long v5, v24, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    .line 293
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    move-wide v5, v0

    sub-long v5, v13, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    move-wide v5, v0

    sub-long v5, v15, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    .line 295
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v5, v0

    sub-long v5, v21, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    move-wide v5, v0

    sub-long v5, v11, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    .line 307
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    .line 308
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    .line 309
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    .line 310
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    .line 311
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    .line 312
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    .line 315
    .end local v11           #idletime:J
    .end local v13           #iowaittime:J
    .end local v15           #irqtime:J
    .end local v21           #softirqtime:J
    .end local v24           #systemtime:J
    .end local v26           #usertime:J
    :cond_c4
    const-string v6, "/proc"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mFirst:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurPids:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurPids:[I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v20, v0

    .line 318
    .local v20, loadAverages:[F
    const-string v5, "/proc/loadavg"

    sget-object v6, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 320
    const/4 v5, 0x0

    aget v17, v20, v5

    .line 321
    .local v17, load1:F
    const/4 v5, 0x1

    aget v19, v20, v5

    .line 322
    .local v19, load5:F
    const/4 v5, 0x2

    aget v18, v20, v5

    .line 323
    .local v18, load15:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v5, v0

    cmpl-float v5, v17, v5

    if-nez v5, :cond_11d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v5, v0

    cmpl-float v5, v19, v5

    if-nez v5, :cond_11d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v5, v0

    cmpl-float v5, v18, v5

    if-eqz v5, :cond_13a

    .line 324
    :cond_11d
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 325
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 326
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ProcessStats;->onLoadChanged(FFF)V

    .line 334
    .end local v17           #load1:F
    .end local v18           #load15:F
    .end local v19           #load5:F
    :cond_13a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 335
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 336
    return-void
.end method
