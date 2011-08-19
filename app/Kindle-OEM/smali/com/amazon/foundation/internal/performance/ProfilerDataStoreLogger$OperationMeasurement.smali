.class Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
.super Ljava/lang/Object;
.source "ProfilerDataStoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationMeasurement"
.end annotation


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private final counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

.field private final data:I

.field private final dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

.field private firstFinishedDataPointIndex:I

.field private final firstStartedDataPointIndex:I

.field private final measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

.field private final parent:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;Lcom/amazon/foundation/internal/performance/ByteIDProvider;Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;II)V
    .locals 1
    .parameter "dataStore"
    .parameter "counters"
    .parameter "measurer"
    .parameter "parent"
    .parameter "data"
    .parameter "firstStartedDataPointIndex"

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

    .line 246
    iput-object p2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    .line 247
    iput-object p3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    .line 248
    iput-object p4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->parent:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 249
    iput p5, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->data:I

    .line 250
    iput p6, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstStartedDataPointIndex:I

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->children:Ljava/util/ArrayList;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    .line 254
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->parent:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->parent:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->addChild(Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;)V

    .line 258
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;)Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    return-object v0
.end method

.method private addChild(Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;)V
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private exclusiveDeltaFor(I)I
    .locals 5
    .parameter "counterIndex"

    .prologue
    .line 443
    iget-object v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    iget-object v4, v4, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->instrument:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-virtual {v4, p1}, Lcom/amazon/foundation/internal/performance/Instrument;->getCounter(I)Lcom/amazon/foundation/internal/performance/Counter;

    move-result-object v2

    .line 444
    .local v2, counter:Lcom/amazon/foundation/internal/performance/Counter;
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->inclusiveDeltaFor(I)I

    move-result v3

    .line 446
    .local v3, retval:I
    iget-object v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 447
    .local v1, childIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 450
    .local v0, child:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    invoke-direct {v0, v2}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->inclusiveDeltaFor(Lcom/amazon/foundation/internal/performance/Counter;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 451
    goto :goto_0

    .line 453
    .end local v0           #child:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    :cond_0
    return v3
.end method

.method private getCounterValueAtEnd(I)I
    .locals 2
    .parameter "counterIndex"

    .prologue
    .line 362
    if-ltz p1, :cond_1

    .line 364
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    if-ltz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getDataPoint(I)I

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getCounterValueAtStart(I)I
    .locals 2
    .parameter "counterIndex"

    .prologue
    .line 345
    if-ltz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstStartedDataPointIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getDataPoint(I)I

    move-result v0

    return v0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private inclusiveDeltaFor(I)I
    .locals 3
    .parameter "counterIndex"

    .prologue
    .line 388
    if-ltz p1, :cond_1

    .line 390
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    if-ltz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getDataPoint(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

    iget v2, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstStartedDataPointIndex:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/amazon/foundation/internal/performance/ProfilerDataStore;->getDataPoint(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private inclusiveDeltaFor(Lcom/amazon/foundation/internal/performance/Counter;)I
    .locals 5
    .parameter "counter"

    .prologue
    .line 415
    iget-object v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    iget-object v4, v4, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->instrument:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-virtual {v4, p1}, Lcom/amazon/foundation/internal/performance/Instrument;->indexOfCounter(Lcom/amazon/foundation/internal/performance/Counter;)I

    move-result v2

    .line 417
    .local v2, counterIndex:I
    if-ltz v2, :cond_0

    .line 419
    invoke-direct {p0, v2}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->inclusiveDeltaFor(I)I

    move-result v4

    .line 430
    :goto_0
    return v4

    .line 423
    :cond_0
    const/4 v3, 0x0

    .line 424
    .local v3, inclusiveDelta:I
    iget-object v4, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    .local v1, childIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 428
    .local v0, child:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    invoke-direct {v0, p1}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->inclusiveDeltaFor(Lcom/amazon/foundation/internal/performance/Counter;)I

    move-result v4

    add-int/2addr v3, v4

    .line 429
    goto :goto_1

    .end local v0           #child:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;
    :cond_1
    move v4, v3

    .line 430
    goto :goto_0
.end method


# virtual methods
.method public setFirstFinishedDataPointIndex(I)V
    .locals 2
    .parameter "firstFinishedDataPointIndex"

    .prologue
    .line 277
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to initalize already-initialized object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput p1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->firstFinishedDataPointIndex:I

    .line 283
    return-void
.end method

.method public writeToLog(Ljava/io/OutputStreamWriter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->getFormatter()Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;

    move-result-object v0

    iget v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->data:I

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->getNumItems()I

    move-result v1

    .line 299
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->itemForId(B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/performance/Counter;

    .line 302
    iget-object v3, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    iget-object v3, v3, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->instrument:Lcom/amazon/foundation/internal/performance/Instrument;

    invoke-virtual {v3, v0}, Lcom/amazon/foundation/internal/performance/Instrument;->indexOfCounter(Lcom/amazon/foundation/internal/performance/Counter;)I

    move-result v0

    .line 303
    if-ltz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->getCounterValueAtStart(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->getCounterValueAtEnd(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->exclusiveDeltaFor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 299
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    move-object v1, p0

    .line 323
    :goto_2
    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v1, v1, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->parent:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    goto :goto_2

    .line 329
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 331
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;

    .line 332
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger$OperationMeasurement;->measurer:Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 335
    :cond_3
    invoke-static {}, Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 336
    return-void
.end method
