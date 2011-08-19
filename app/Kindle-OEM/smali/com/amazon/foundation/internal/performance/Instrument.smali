.class public final Lcom/amazon/foundation/internal/performance/Instrument;
.super Ljava/lang/Object;
.source "Instrument.java"


# instance fields
.field private final counters:[Lcom/amazon/foundation/internal/performance/Counter;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/performance/Counter;)V
    .locals 2
    .parameter "counter"

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/performance/Instrument;-><init>([Lcom/amazon/foundation/internal/performance/Counter;)V

    .line 23
    return-void
.end method

.method public constructor <init>([Lcom/amazon/foundation/internal/performance/Counter;)V
    .locals 0
    .parameter "counters"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    .line 34
    return-void
.end method

.method public constructor <init>([[Lcom/amazon/foundation/internal/performance/Counter;)V
    .locals 1
    .parameter "counterLists"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    .line 67
    return-void
.end method


# virtual methods
.method public getCounter(I)Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1
    .parameter "index"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumCounters()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    array-length v0, v0

    return v0
.end method

.method public indexOfCounter(Lcom/amazon/foundation/internal/performance/Counter;)I
    .locals 2
    .parameter "counter"

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/Instrument;->counters:[Lcom/amazon/foundation/internal/performance/Counter;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 103
    :goto_1
    return v1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method start(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 122
    return-void
.end method

.method stop(Lcom/amazon/foundation/internal/performance/ProfilerDataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 140
    return-void
.end method
