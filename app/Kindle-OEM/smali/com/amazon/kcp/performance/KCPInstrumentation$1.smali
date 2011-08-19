.class final Lcom/amazon/kcp/performance/KCPInstrumentation$1;
.super Ljava/lang/Object;
.source "KCPInstrumentation.java"

# interfaces
.implements Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/performance/KCPInstrumentation;->initializeUnused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGCCounters()[Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getIOCounters()[Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getMemoryCounters()[Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getTimingCounters()[Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method
