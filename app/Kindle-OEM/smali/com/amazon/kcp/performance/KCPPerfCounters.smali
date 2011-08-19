.class public final Lcom/amazon/kcp/performance/KCPPerfCounters;
.super Ljava/lang/Object;
.source "KCPPerfCounters.java"


# static fields
.field public static final DISK_READ_BYTES:Lcom/amazon/foundation/internal/performance/Counter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    const-string v1, "DISK READS"

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/performance/KCPPerfCounters;->DISK_READ_BYTES:Lcom/amazon/foundation/internal/performance/Counter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
