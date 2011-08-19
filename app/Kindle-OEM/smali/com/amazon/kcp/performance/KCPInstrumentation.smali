.class public final Lcom/amazon/kcp/performance/KCPInstrumentation;
.super Ljava/lang/Object;
.source "KCPInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;
    }
.end annotation


# static fields
.field public static OPS:Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

.field private static counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    .line 69
    sput-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->OPS:Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

    .line 70
    invoke-static {}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->close()V

    .line 72
    return-void
.end method

.method public static initialize(IILjava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sput-object p4, Lcom/amazon/kcp/performance/KCPInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    .line 58
    new-instance v0, Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;-><init>(Lcom/amazon/kcp/performance/KCPInstrumentation$1;)V

    sput-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->OPS:Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

    .line 59
    invoke-static {p4}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->initialize(Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;)V

    .line 60
    return-void
.end method

.method public static initializeUnused()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/amazon/kcp/performance/KCPInstrumentation$1;

    invoke-direct {v0}, Lcom/amazon/kcp/performance/KCPInstrumentation$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    .line 48
    new-instance v0, Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;-><init>(Lcom/amazon/kcp/performance/KCPInstrumentation$1;)V

    sput-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->OPS:Lcom/amazon/kcp/performance/KCPInstrumentation$Operations;

    .line 50
    sget-object v0, Lcom/amazon/kcp/performance/KCPInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    invoke-static {v0}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->initialize(Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;)V

    .line 52
    return-void
.end method
