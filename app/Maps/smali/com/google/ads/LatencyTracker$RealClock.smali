.class Lcom/google/ads/LatencyTracker$RealClock;
.super Ljava/lang/Object;
.source "LatencyTracker.java"

# interfaces
.implements Lcom/google/ads/LatencyTracker$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealClock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/LatencyTracker;


# direct methods
.method private constructor <init>(Lcom/google/ads/LatencyTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$RealClock;->this$0:Lcom/google/ads/LatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/LatencyTracker;Lcom/google/ads/LatencyTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/google/ads/LatencyTracker$RealClock;-><init>(Lcom/google/ads/LatencyTracker;)V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
