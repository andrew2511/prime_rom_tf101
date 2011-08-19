.class Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;
.super Ljava/lang/Object;
.source "ProfilerDataStoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    }
.end annotation


# static fields
.field private static COMMA:Ljava/lang/String;

.field private static END_SUFFIX:Ljava/lang/String;

.field private static EXCLUSIVE_SUFFIX:Ljava/lang/String;

.field private static FIRST_TWO_COLUMNS:Ljava/lang/String;

.field private static LEVEL_PREFIX:Ljava/lang/String;

.field private static NEWLINE:Ljava/lang/String;

.field private static START_SUFFIX:Ljava/lang/String;


# instance fields
.field private final counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

.field private final measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

.field private numCountersLastTime:I

.field private final out:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "Operation, Data,"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->FIRST_TWO_COLUMNS:Ljava/lang/String;

    .line 73
    const-string v0, "-start,"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->START_SUFFIX:Ljava/lang/String;

    .line 74
    const-string v0, "-end,"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->END_SUFFIX:Ljava/lang/String;

    .line 75
    const-string v0, "-excl,"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->EXCLUSIVE_SUFFIX:Ljava/lang/String;

    .line 76
    const-string v0, "Level"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->LEVEL_PREFIX:Ljava/lang/String;

    .line 77
    const-string v0, ","

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->COMMA:Ljava/lang/String;

    .line 78
    const-string v0, "\n"

    sput-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStreamWriter;Lcom/amazon/foundation/internal/performance/ByteIDProvider;Lcom/amazon/foundation/internal/performance/ByteIDProvider;)V
    .locals 1
    .parameter "out"
    .parameter "counters"
    .parameter "measurers"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->numCountersLastTime:I

    .line 37
    iput-object p1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    .line 38
    iput-object p2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    .line 39
    iput-object p3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    .line 40
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->COMMA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->NEWLINE:Ljava/lang/String;

    return-object v0
.end method

.method private compileMeasurements(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;)[Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    .locals 14
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getNumMeasurements()I

    move-result v0

    new-array v7, v0, [Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 119
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getNumThreads()I

    move-result v0

    new-array v9, v0, [Ljava/util/Stack;

    .line 121
    const/4 v0, 0x0

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    aput-object v1, v9, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getNumSamples()I

    move-result v10

    .line 127
    const/4 v0, 0x0

    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v2, 0x0

    move v11, v2

    move v6, v1

    move v12, v0

    :goto_1
    if-ge v11, v10, :cond_7

    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1, v11}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getSampleThread(I)B

    move-result v0

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1, v11}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getSampleMeasurer(I)B

    move-result v4

    .line 135
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->itemForId(B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    .line 137
    if-ltz v0, :cond_a

    .line 139
    aget-object v0, v9, v0

    move-object v13, v0

    .line 142
    :goto_2
    if-lez v4, :cond_2

    .line 144
    const/4 v0, 0x0

    .line 146
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 148
    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    move-object v4, v0

    .line 151
    :goto_3
    invoke-virtual {p1, v12}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getMeasurementTag(I)I

    move-result v5

    .line 152
    new-instance v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;-><init>(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;Lcom/amazon/foundation/internal/performance/ByteIDProvider;Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;II)V

    aput-object v0, v7, v12

    .line 154
    if-eqz v13, :cond_1

    .line 156
    invoke-virtual {v13, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_4
    add-int/lit8 v1, v12, 0x1

    .line 194
    :goto_5
    invoke-static {v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->access$000(Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;)Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->instrument:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Instrument;->getNumCounters()I

    move-result v0

    add-int/2addr v0, v6

    .line 129
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v6, v0

    move v12, v1

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 165
    :cond_2
    if-gez v4, :cond_6

    .line 167
    if-eqz v13, :cond_4

    .line 169
    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 188
    :cond_3
    invoke-virtual {v0, v6}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->setFirstFinishedDataPointIndex(I)V

    move v1, v12

    goto :goto_5

    .line 173
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_6
    if-ltz v2, :cond_8

    .line 175
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 176
    invoke-static {v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->access$000(Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;)Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    move-result-object v4

    if-ne v4, v3, :cond_5

    .line 179
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    :goto_7
    if-nez v0, :cond_3

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 173
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 197
    :cond_7
    return-object v7

    :cond_8
    move-object v0, v1

    goto :goto_7

    :cond_9
    move-object v4, v0

    goto :goto_3

    :cond_a
    move-object v13, v2

    goto :goto_2
.end method

.method private outputTitleRow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->FIRST_TWO_COLUMNS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .local v1, counterIter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/Counter;

    .line 92
    .local v0, counter:Lcom/amazon/foundation/internal/performance/Counter;
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->START_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->END_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->EXCLUSIVE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0           #counter:Lcom/amazon/foundation/internal/performance/Counter;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->LEVEL_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->COMMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 49
    return-void
.end method

.method public logDataStore(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;)V
    .locals 5
    .parameter "dataStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->getNumItems()I

    move-result v2

    .line 59
    .local v2, numCounters:I
    iget v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->numCountersLastTime:I

    if-eq v2, v3, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->outputTitleRow()V

    .line 62
    iput v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->numCountersLastTime:I

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->compileMeasurements(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;)[Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    move-result-object v1

    .line 66
    .local v1, measurements:[Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 68
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->writeToLog(Ljava/io/OutputStreamWriter;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method
