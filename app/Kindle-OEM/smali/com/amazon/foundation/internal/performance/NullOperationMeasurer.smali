.class public final Lcom/amazon/foundation/internal/performance/NullOperationMeasurer;
.super Ljava/lang/Object;
.source "NullOperationMeasurer.java"

# interfaces
.implements Lcom/amazon/foundation/internal/performance/OperationMeasurer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;Lcom/amazon/foundation/internal/performance/Instrument;)V
    .locals 0
    .parameter "name"
    .parameter "formatter"
    .parameter "instrument"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public startAdHocTimer(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 33
    return-void
.end method

.method public startCallStackTimer(I)V
    .locals 0
    .parameter "data"

    .prologue
    .line 39
    return-void
.end method

.method public stopAdHocTimer()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public stopCallStackTimer()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
