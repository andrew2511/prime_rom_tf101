.class public final Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;
.super Ljava/lang/Object;
.source "SimpleOperationMeasurer.java"

# interfaces
.implements Lcom/amazon/foundation/internal/performance/OperationMeasurer;


# instance fields
.field private final formatter:Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;

.field final id:B

.field final instrument:Lcom/amazon/foundation/internal/performance/Instrument;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V
    .locals 1
    .parameter "name"
    .parameter "formatter"
    .parameter "instrument"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->formatter:Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;

    .line 41
    iput-object p3, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->instrument:Lcom/amazon/foundation/internal/performance/Instrument;

    .line 49
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->id:B

    .line 51
    return-void
.end method


# virtual methods
.method public getFormatter()Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->formatter:Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/SimpleOperationMeasurer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public startAdHocTimer(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public startCallStackTimer(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    return-void
.end method

.method public stopAdHocTimer()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public stopCallStackTimer()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
