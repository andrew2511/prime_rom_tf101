.class public final Ldalvik/system/SamplingProfiler$AsciiHprofWriter;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/SamplingProfiler$HprofWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsciiHprofWriter"
.end annotation


# static fields
.field private static final SAMPLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ldalvik/system/SamplingProfiler$HprofData;

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 494
    new-instance v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter$1;

    invoke-direct {v0}, Ldalvik/system/SamplingProfiler$AsciiHprofWriter$1;-><init>()V

    sput-object v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ldalvik/system/SamplingProfiler$HprofData;Ljava/io/OutputStream;)V
    .registers 4
    .parameter "data"
    .parameter "outputStream"

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    .line 447
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    .line 448
    return-void
.end method


# virtual methods
.method public write()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ldalvik/system/SamplingProfiler$HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    .line 452
    .local v7, e:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    .line 455
    .end local v7           #e:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    :cond_27
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ldalvik/system/SamplingProfiler$HprofData;->getSamples()Ljava/util/Set;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    .local v14, samples:Ljava/util/List;,"Ljava/util/List<Ldalvik/system/SamplingProfiler$HprofData$Sample;>;"
    sget-object v19, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    const/16 v18, 0x0

    .line 459
    .local v18, total:I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :cond_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_ad

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .line 460
    .local v13, sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    move-object v0, v13

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-object/from16 v17, v0

    .line 461
    .local v17, stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    iget v6, v13, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    .line 462
    .local v6, count:I
    add-int v18, v18, v6

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "TRACE %d: (thread=%d)\n"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I
    invoke-static/range {v17 .. v17}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$100(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 466
    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static/range {v17 .. v17}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/StackTraceElement;
    array-length v10, v5

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_8f
    if-ge v9, v10, :cond_47

    aget-object v7, v5, v9

    .line 467
    .local v7, e:Ljava/lang/StackTraceElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "\t%s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 466
    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    .line 470
    .end local v5           #arr$:[Ljava/lang/StackTraceElement;
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/StackTraceElement;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    .end local v17           #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_ad
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ldalvik/system/SamplingProfiler$HprofData;->getStartMillis()J

    move-result-wide v19

    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 472
    .local v11, now:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "CPU SAMPLES BEGIN (total = %d) %ta %tb %td %tT %tY\n"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v11, v21, v22

    const/16 v22, 0x2

    aput-object v11, v21, v22

    const/16 v22, 0x3

    aput-object v11, v21, v22

    const/16 v22, 0x4

    aput-object v11, v21, v22

    const/16 v22, 0x5

    aput-object v11, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "rank   self  accum   count trace method\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 475
    const/4 v12, 0x0

    .line 476
    .local v12, rank:I
    const-wide/16 v3, 0x0

    .line 477
    .local v3, accum:D
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_108
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_194

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .line 478
    .restart local v13       #sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    add-int/lit8 v12, v12, 0x1

    .line 479
    move-object v0, v13

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-object/from16 v17, v0

    .line 480
    .restart local v17       #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    iget v6, v13, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    .line 481
    .restart local v6       #count:I
    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v15, v19, v21

    .line 482
    .local v15, self:D
    add-double/2addr v3, v15

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "% 4d% 6.2f%%% 6.2f%% % 7d % 5d %s.%s\n"

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-wide/high16 v23, 0x4059

    mul-double v23, v23, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-wide/high16 v23, 0x4059

    mul-double v23, v23, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    move-object/from16 v0, v17

    iget v0, v0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static/range {v17 .. v17}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x6

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static/range {v17 .. v17}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_108

    .line 490
    .end local v6           #count:I
    .end local v13           #sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    .end local v15           #self:D
    .end local v17           #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    const-string v20, "CPU SAMPLES END\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->flush()V

    .line 492
    return-void
.end method
