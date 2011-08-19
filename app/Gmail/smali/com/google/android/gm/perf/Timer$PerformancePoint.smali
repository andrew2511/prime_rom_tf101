.class Lcom/google/android/gm/perf/Timer$PerformancePoint;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/perf/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformancePoint"
.end annotation


# instance fields
.field public final mCpuTimeNanos:J

.field public final mWallTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mCpuTimeNanos:J

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/perf/Timer$PerformancePoint;->mWallTimeMillis:J

    .line 58
    return-void
.end method
