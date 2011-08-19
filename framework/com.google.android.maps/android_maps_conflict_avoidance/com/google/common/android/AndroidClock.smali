.class public Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;
.super Ljava/lang/Object;
.source "AndroidClock.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/Clock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public relativeTimeMillis()J
    .registers 3

    .prologue
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
