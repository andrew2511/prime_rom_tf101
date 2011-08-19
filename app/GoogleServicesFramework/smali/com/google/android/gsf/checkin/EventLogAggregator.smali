.class public Lcom/google/android/gsf/checkin/EventLogAggregator;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    }
.end annotation


# static fields
.field private static final OPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mInterestingTags:[I

.field private mTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const-string v0, ",?([a-z_]+)(?:\\(([0-9]+)\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    .line 419
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "count"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$1;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "sum"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$2;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "mean"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$3;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$4;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$5;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "group_by"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$6;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLong(Ljava/lang/Object;)J
    .locals 2
    .parameter "data"

    .prologue
    .line 544
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillis(Landroid/util/EventLog$Event;)J
    .locals 4
    .parameter "event"

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter "data"
    .parameter "param"

    .prologue
    .line 519
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parameter required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_0
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 521
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 522
    .local v1, array:[Ljava/lang/Object;
    if-ltz p1, :cond_1

    array-length v2, v1

    if-lt p1, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad index"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_2
    aget-object v2, v1, p1

    .line 527
    .end local v1           #array:[Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 524
    .restart local p0
    :cond_3
    if-lez p1, :cond_4

    .line 525
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list expected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v2, p0

    .line 527
    goto :goto_0
.end method

.method private static parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 391
    new-instance v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;-><init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V

    .line 392
    .local v4, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 393
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 396
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 397
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 400
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, op:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v5, -0x1

    move v3, v5

    .line 402
    .local v3, param:I
    :goto_1
    const-string v5, "log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    iput-boolean v7, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    .line 394
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 401
    .end local v3           #param:I
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 405
    .restart local v3       #param:I
    :cond_4
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad function: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :cond_5
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v5, "group_by"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    .end local v0           #arg:Ljava/lang/String;
    .end local v2           #op:Ljava/lang/String;
    .end local v3           #param:I
    :cond_6
    return-object v4
.end method

.method private declared-synchronized updateTagMap(Landroid/content/ContentResolver;)V
    .locals 14
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v10

    .line 347
    .local v10, versionToken:Ljava/lang/Object;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v10, v11, :cond_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 351
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "event:"

    aput-object v13, v11, v12

    invoke-static {p1, v11}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 352
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 353
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "event:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, tag:Ljava/lang/String;
    invoke-static {v6}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v4

    .line 355
    .local v4, num:I
    if-gez v4, :cond_2

    .line 356
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 346
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #num:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v10           #versionToken:Ljava/lang/Object;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 360
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #num:I
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v10       #versionToken:Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 361
    .local v5, spec:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-lez v11, :cond_1

    .line 364
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gsf/checkin/EventLogAggregator;->parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    move-result-object v9

    .line 365
    .local v9, tagspec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    iget-boolean v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-nez v11, :cond_3

    iget-object v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 366
    :cond_3
    iput-object v6, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    .line 367
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 368
    .end local v9           #tagspec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 369
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 375
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #num:I
    .end local v5           #spec:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 376
    .local v7, tags:I
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 377
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v7

    .end local v7           #tags:I
    .local v8, tags:I
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, tag:Ljava/lang/Integer;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #tags:I
    .restart local v7       #tags:I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v8

    move v8, v7

    .end local v7           #tags:I
    .restart local v8       #tags:I
    goto :goto_2

    .line 378
    .end local v6           #tag:Ljava/lang/Integer;
    :cond_5
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #tags:I
    .restart local v7       #tags:I
    const v12, 0x11238

    aput v12, v11, v8

    .line 379
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    array-length v11, v11

    if-eq v7, v11, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 381
    :cond_6
    iput-object v10, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 22
    .parameter "beginTimeMillis"
    .parameter "endTimeMillis"
    .parameter "firstTimeMillis"
    .parameter
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p7, events:Ljava/util/List;,"Ljava/util/List<Landroid/util/EventLog$Event;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v3, buffer:Ljava/lang/StringBuilder;
    const-string v19, "start="

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v19, "end="

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    cmp-long v19, p5, p1

    if-eqz v19, :cond_0

    .line 287
    const-string v19, "log_start="

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v12, key:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v16, stateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p1
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 295
    .local v7, event:Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTag()I

    move-result v18

    .line 296
    .local v18, tag:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 297
    .local v14, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v14, :cond_1

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 299
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 300
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 302
    .local v4, data:Ljava/lang/Object;
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, g:I
    invoke-static {v4, v8}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    .end local v8           #g:I
    :cond_2
    :try_start_0
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 306
    .local v15, state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    if-nez v15, :cond_4

    .line 307
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .restart local v15       #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 309
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 311
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v9           #i:I
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .local v13, ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    invoke-interface {v13, v7, v4}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 315
    .end local v13           #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    .end local v15           #state:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 316
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v19, "EventLogAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t accumulate event: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 322
    .end local v4           #data:Ljava/lang/Object;
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #event:Landroid/util/EventLog$Event;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v18           #tag:I
    :cond_5
    :try_start_1
    const-string v19, "\n"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p0
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 324
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 325
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .line 326
    .restart local v13       #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    const-string v19, ","

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-interface {v13, v3}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->finish(Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 331
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #ops:Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    :catch_1
    move-exception v19

    move-object/from16 v5, v19

    .line 332
    .local v5, e:Ljava/io/IOException;
    const-string v19, "EventLogAggregator"

    const-string v20, "IOException writing StringBuilder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v5           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 337
    .local v17, str:Ljava/lang/String;
    const-string v19, "event_data"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 329
    .end local v17           #str:Ljava/lang/String;
    .restart local v6       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_2
    const-string v19, "\n"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private declared-synchronized writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 15
    .parameter "beginTimeMillis"
    .parameter "endTimeMillis"
    .parameter "firstTimeMillis"
    .parameter
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p7, events:Ljava/util/List;,"Ljava/util/List<Landroid/util/EventLog$Event;>;"
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v4, buffer:Ljava/lang/StringBuilder;
    cmp-long v13, p5, p1

    if-eqz v13, :cond_0

    .line 232
    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",0,0,event_log_start"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 236
    .local v7, event:Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTag()I

    move-result v12

    .line 237
    .local v12, tag:I
    iget-object v13, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 238
    .local v10, spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v10, :cond_1

    iget-boolean v13, v10, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-eqz v13, :cond_1

    .line 240
    invoke-static {v7}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getThreadId()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v13, v10, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 247
    .local v5, data:Ljava/lang/Object;
    instance-of v13, v5, [Ljava/lang/Object;

    if-eqz v13, :cond_2

    .line 248
    check-cast v5, [Ljava/lang/Object;

    .end local v5           #data:Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 249
    .local v3, array:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v13, v3

    if-ge v8, v13, :cond_3

    .line 250
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    aget-object v13, v3, v8

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 249
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 253
    .end local v3           #array:[Ljava/lang/Object;
    .end local v8           #i:I
    .restart local v5       #data:Ljava/lang/Object;
    :cond_2
    if-eqz v5, :cond_3

    .line 254
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .end local v5           #data:Ljava/lang/Object;
    :cond_3
    :goto_2
    :try_start_2
    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 229
    .end local v4           #buffer:Ljava/lang/StringBuilder;
    .end local v7           #event:Landroid/util/EventLog$Event;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v12           #tag:I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 257
    .restart local v4       #buffer:Ljava/lang/StringBuilder;
    .restart local v7       #event:Landroid/util/EventLog$Event;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .restart local v12       #tag:I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 258
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    const-string v13, "EventLogAggregator"

    const-string v14, "IOException writing StringBuilder"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 264
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #event:Landroid/util/EventLog$Event;
    .end local v10           #spec:Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v12           #tag:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, str:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 267
    const-string v13, "event_log"

    move-object/from16 v0, p8

    move-object v1, v13

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized aggregate(Landroid/content/ContentResolver;JJLandroid/os/DropBoxManager;)J
    .locals 32
    .parameter "resolver"
    .parameter "logBookmark"
    .parameter "dataBookmark"
    .parameter "dropbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->updateTagMap(Landroid/content/ContentResolver;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 153
    .local v6, newBookmark:J
    const v3, 0x11238

    invoke-static {v3, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 155
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v26, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 160
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    .local v28, logPos:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, dataPos:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 161
    .local v24, endPos:I
    move-wide v8, v6

    .local v8, logMillis:J
    move-wide/from16 v16, v6

    .line 163
    .local v16, dataMillis:J
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 164
    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/EventLog$Event;

    .line 165
    .local v25, event:Landroid/util/EventLog$Event;
    invoke-virtual/range {v25 .. v25}, Landroid/util/EventLog$Event;->getTag()I

    move-result v31

    .line 166
    .local v31, tag:I
    invoke-static/range {v25 .. v25}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v29

    .line 170
    .local v29, millis:J
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    cmp-long v3, v29, p2

    if-ltz v3, :cond_0

    .line 171
    move/from16 v28, v27

    .line 172
    cmp-long v3, v29, v8

    if-gez v3, :cond_0

    move-wide/from16 v8, v29

    .line 174
    :cond_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    cmp-long v3, v29, p4

    if-ltz v3, :cond_1

    .line 175
    move/from16 v23, v27

    .line 176
    cmp-long v3, v29, v16

    if-gez v3, :cond_1

    move-wide/from16 v16, v29

    .line 180
    :cond_1
    const v3, 0x11238

    move/from16 v0, v31

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 181
    invoke-virtual/range {v25 .. v25}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v22

    .line 182
    .local v22, data:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Long;

    move v3, v0

    if-eqz v3, :cond_7

    .line 183
    check-cast v22, Ljava/lang/Long;

    .end local v22           #data:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 184
    .local v20, bookmark:J
    cmp-long v3, v20, p2

    if-nez v3, :cond_2

    .line 185
    add-int/lit8 v28, v27, 0x1

    .line 186
    move-wide/from16 v8, p2

    .line 188
    :cond_2
    cmp-long v3, v20, p4

    if-nez v3, :cond_3

    .line 189
    add-int/lit8 v23, v27, 0x1

    .line 190
    move-wide/from16 v16, p4

    .line 192
    :cond_3
    cmp-long v3, v20, v6

    if-nez v3, :cond_7

    .line 193
    move/from16 v24, v27

    .line 205
    .end local v20           #bookmark:J
    .end local v25           #event:Landroid/util/EventLog$Event;
    .end local v29           #millis:J
    .end local v31           #tag:I
    :cond_4
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-lez v3, :cond_5

    if-eqz p6, :cond_5

    .line 206
    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v26

    move v1, v3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    .local v10, logEvents:Ljava/util/List;
    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v11, p6

    .line 207
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V

    .line 209
    .end local v10           #logEvents:Ljava/util/List;
    :cond_5
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-lez v3, :cond_6

    if-eqz p6, :cond_6

    .line 210
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v26

    move v1, v3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v18

    .local v18, dataEvents:Ljava/util/List;
    move-object/from16 v11, p0

    move-wide/from16 v12, p4

    move-wide v14, v6

    move-object/from16 v19, p6

    .line 211
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v18           #dataEvents:Ljava/util/List;
    :cond_6
    monitor-exit p0

    return-wide v6

    .line 163
    .restart local v25       #event:Landroid/util/EventLog$Event;
    .restart local v29       #millis:J
    .restart local v31       #tag:I
    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 148
    .end local v6           #newBookmark:J
    .end local v8           #logMillis:J
    .end local v16           #dataMillis:J
    .end local v23           #dataPos:I
    .end local v24           #endPos:I
    .end local v25           #event:Landroid/util/EventLog$Event;
    .end local v26           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    .end local v27           #i:I
    .end local v28           #logPos:I
    .end local v29           #millis:J
    .end local v31           #tag:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
