.class Lcom/amazon/foundation/internal/performance/ProfilerDataStore;
.super Ljava/lang/Object;
.source "ProfilerDataStore.java"


# static fields
.field private static final MAX_NUM_THREADS:I = 0x7f

.field public static final SAMPLE_IN_ORDER:Z = true

.field public static final SAMPLE_IN_REVERSED_ORDER:Z


# instance fields
.field private final dataPoints:[I

.field private final measurementTags:[I

.field private numActiveInstruments:I

.field private numDataPoints:I

.field private numMeasurements:I

.field private numSamples:I

.field private numThreads:B

.field private final sampleMeasurers:[B

.field private final sampleThreads:[B

.field private final threadLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final threadStacks:[Ljava/util/Stack;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "maxNumMeasurements"
    .parameter "maxNumDataPoints"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadLookup:Ljava/util/HashMap;

    .line 90
    const/16 v0, 0x7f

    new-array v0, v0, [Ljava/util/Stack;

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadStacks:[Ljava/util/Stack;

    .line 91
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->dataPoints:[I

    .line 92
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleMeasurers:[B

    .line 93
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    .line 94
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->measurementTags:[I

    .line 95
    return-void
.end method

.method private getThreadID()B
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadLookup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 115
    if-nez v0, :cond_1

    .line 117
    iget-byte v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadStacks:[Ljava/util/Stack;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Profiler thread store full."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-byte v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    .line 123
    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v0}, Ljava/lang/Byte;-><init>(B)V

    .line 124
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadStacks:[Ljava/util/Stack;

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    aput-object v4, v3, v0

    .line 125
    iget-byte v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    .line 128
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadLookup:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private recordSample(B)I
    .locals 3
    .parameter "measurerID"

    .prologue
    .line 170
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleMeasurers:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 172
    new-instance v1, Ljava/lang/OutOfMemoryError;

    const-string v2, "Profiler operation buffer full."

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    .line 177
    .local v0, sampleIndex:I
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleMeasurers:[B

    aput-byte p1, v1, v0

    .line 178
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    .line 180
    return v0
.end method


# virtual methods
.method public getDataPoint(I)I
    .locals 1
    .parameter "dataPoint"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->dataPoints:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasurementTag(I)I
    .locals 1
    .parameter "measurement"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->measurementTags:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumDataPoints()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numDataPoints:I

    return v0
.end method

.method public getNumMeasurements()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numMeasurements:I

    return v0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    return v0
.end method

.method public getNumThreads()I
    .locals 1

    .prologue
    .line 266
    iget-byte v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    return v0
.end method

.method public getSampleMeasurer(I)B
    .locals 1
    .parameter "sample"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleMeasurers:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getSampleThread(I)B
    .locals 1
    .parameter "sample"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hasActiveMeasurements()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordCounterValues([Lcom/amazon/foundation/internal/performance/Counter;Z)V
    .locals 9
    .parameter "counters"
    .parameter "inOrder"

    .prologue
    const/4 v8, 0x1

    .line 144
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->dataPoints:[I

    .line 145
    .local v0, dataPoints:[I
    iget v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numDataPoints:I

    .line 147
    .local v4, numValues:I
    array-length v6, p1

    add-int/2addr v6, v4

    array-length v7, v0

    if-le v6, v7, :cond_0

    .line 149
    new-instance v6, Ljava/lang/OutOfMemoryError;

    const-string v7, "Profiler data point buffer full."

    invoke-direct {v6, v7}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 152
    :cond_0
    array-length v6, p1

    add-int v3, v4, v6

    .line 153
    .local v3, newNumValues:I
    if-eqz p2, :cond_1

    move v2, v4

    .line 154
    .local v2, index:I
    :goto_0
    if-eqz p2, :cond_2

    move v5, v8

    .line 156
    .local v5, offset:I
    :goto_1
    move v1, v2

    .local v1, i:I
    :goto_2
    if-lt v1, v4, :cond_3

    if-ge v1, v3, :cond_3

    .line 158
    sub-int v6, v1, v4

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/amazon/foundation/internal/performance/Counter;->getValue()I

    move-result v6

    aput v6, v0, v1

    .line 156
    add-int/2addr v1, v5

    goto :goto_2

    .line 153
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v5           #offset:I
    :cond_1
    sub-int v6, v3, v8

    move v2, v6

    goto :goto_0

    .line 154
    .restart local v2       #index:I
    :cond_2
    const/4 v6, -0x1

    move v5, v6

    goto :goto_1

    .line 160
    .restart local v1       #i:I
    .restart local v5       #offset:I
    :cond_3
    iget v6, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numDataPoints:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numDataPoints:I

    .line 161
    return-void
.end method

.method public recordOperationFinished(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 191
    iget-byte v0, p1, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->id:B

    neg-int v0, v0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->recordSample(B)I

    move-result v1

    .line 193
    if-eqz p2, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getThreadID()B

    move-result v2

    .line 196
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadStacks:[Ljava/util/Stack;

    aget-object v3, v0, v2

    .line 198
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    .line 199
    if-eq p1, v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched operation. Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    aput-byte v2, v0, v1

    .line 210
    :goto_0
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    .line 211
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public recordOperationStarted(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iget-byte v0, p1, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->id:B

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->recordSample(B)I

    move-result v0

    .line 224
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numMeasurements:I

    .line 225
    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->measurementTags:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 227
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Profiler operation pool full."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    if-eqz p3, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getThreadID()B

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadStacks:[Ljava/util/Stack;

    aget-object v3, v3, v2

    .line 234
    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    aput-byte v2, v3, v0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->measurementTags:[I

    aput p2, v0, v1

    .line 243
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numMeasurements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numMeasurements:I

    .line 244
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    .line 245
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->sampleThreads:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-byte v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numThreads:B

    .line 253
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->threadLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 254
    iput v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numSamples:I

    .line 255
    iput v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numMeasurements:I

    .line 256
    iput v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numActiveInstruments:I

    .line 257
    iput v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->numDataPoints:I

    .line 258
    return-void
.end method
