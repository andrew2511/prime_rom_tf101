.class public final Ldalvik/system/SamplingProfiler$HprofData;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HprofData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/SamplingProfiler$HprofData$Sample;,
        Ldalvik/system/SamplingProfiler$HprofData$StackTrace;,
        Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;,
        Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;
    }
.end annotation


# instance fields
.field private depth:I

.field private flags:I

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private startMillis:J

.field private final threadHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final threadIdToThreadEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$StackTrace;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, stackTraces:Ljava/util/Map;,"Ljava/util/Map<Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadHistory:Ljava/util/List;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    .line 315
    if-nez p1, :cond_1b

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackTraces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1b
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$HprofData;->stackTraces:Ljava/util/Map;

    .line 319
    return-void
.end method


# virtual methods
.method public addStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I)V
    .registers 7
    .parameter "stackTrace"
    .parameter "countCell"

    .prologue
    .line 425
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I
    invoke-static {p1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$100(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I
    invoke-static {p1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$100(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_2d
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 429
    .local v0, old:[I
    if-eqz v0, :cond_5c

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackTrace already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_5c
    return-void
.end method

.method public addThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 389
    if-nez p1, :cond_a

    .line 390
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "event == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_a
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    iget v2, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    .line 393
    .local v0, old:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    sget-object v1, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    iget-object v2, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v2}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6c

    .line 414
    :cond_25
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadHistory:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    return-void

    .line 395
    :pswitch_2b
    if-eqz v0, :cond_25

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadEvent already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :pswitch_48
    if-eqz v0, :cond_25

    iget-object v1, v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    sget-object v2, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    if-ne v1, v2, :cond_25

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate ThreadEvent.end for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_48
    .end packed-switch
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->depth:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->flags:I

    return v0
.end method

.method public getSamples()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p0, Ldalvik/system/SamplingProfiler$HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 375
    .local v5, samples:Ljava/util/Set;,"Ljava/util/Set<Ldalvik/system/SamplingProfiler$HprofData$Sample;>;"
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 376
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    .line 377
    .local v6, stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 378
    .local v1, countCell:[I
    const/4 v7, 0x0

    aget v0, v1, v7

    .line 379
    .local v0, count:I
    new-instance v4, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v0, v7}, Ldalvik/system/SamplingProfiler$HprofData$Sample;-><init>(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;ILdalvik/system/SamplingProfiler$1;)V

    .line 380
    .local v4, sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 382
    .end local v0           #count:I
    .end local v1           #countCell:[I
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I>;"
    .end local v4           #sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    .end local v6           #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_3a
    return-object v5
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 325
    iget-wide v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->startMillis:J

    return-wide v0
.end method

.method public getThreadHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData;->threadHistory:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDepth(I)V
    .registers 2
    .parameter "depth"

    .prologue
    .line 360
    iput p1, p0, Ldalvik/system/SamplingProfiler$HprofData;->depth:I

    .line 361
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 346
    iput p1, p0, Ldalvik/system/SamplingProfiler$HprofData;->flags:I

    .line 347
    return-void
.end method

.method public setStartMillis(J)V
    .registers 3
    .parameter "startMillis"

    .prologue
    .line 332
    iput-wide p1, p0, Ldalvik/system/SamplingProfiler$HprofData;->startMillis:J

    .line 333
    return-void
.end method
