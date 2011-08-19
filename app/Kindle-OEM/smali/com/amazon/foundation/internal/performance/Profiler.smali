.class public final Lcom/amazon/foundation/internal/performance/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# static fields
.field private static final adHocOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;",
            ">;"
        }
    .end annotation
.end field

.field private static final counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

.field private static dataStore:Lcom/amazon/foundation/internal/performance/ProfilerDataStore;

.field private static log:Lcom/amazon/foundation/internal/performance/ProfilerDataStoreLogger;

.field private static final measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/Profiler;->adHocOperations:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/Profiler;->measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    .line 42
    new-instance v0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/Profiler;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static close()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method private static dumpLog()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public static initialize(IILjava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 0
    .parameter "maxNumOperations"
    .parameter "maxNumDataPoints"
    .parameter "filename"
    .parameter "fileFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method static registerCounter(Lcom/amazon/foundation/internal/performance/Counter;)B
    .locals 1
    .parameter "counter"

    .prologue
    .line 214
    sget-object v0, Lcom/amazon/foundation/internal/performance/Profiler;->counters:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->idForItem(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method static registerMeasurer(Lcom/amazon/foundation/internal/performance/OperationMeasurer;)B
    .locals 1
    .parameter "measurer"

    .prologue
    .line 224
    sget-object v0, Lcom/amazon/foundation/internal/performance/Profiler;->measurers:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->idForItem(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method static startMeasuring(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;I)V
    .locals 0
    .parameter "measurer"
    .parameter "data"

    .prologue
    .line 181
    return-void
.end method

.method static stopMeasuring(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;)V
    .locals 0
    .parameter "measurer"

    .prologue
    .line 205
    return-void
.end method

.method static traceCall(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;I)V
    .locals 0
    .parameter "measurer"
    .parameter "data"

    .prologue
    .line 140
    return-void
.end method

.method static traceReturn(Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;)V
    .locals 0
    .parameter "measurer"

    .prologue
    .line 163
    return-void
.end method
