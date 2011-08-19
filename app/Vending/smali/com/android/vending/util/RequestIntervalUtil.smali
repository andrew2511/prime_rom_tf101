.class public Lcom/android/vending/util/RequestIntervalUtil;
.super Ljava/lang/Object;
.source "RequestIntervalUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/RequestIntervalUtil$IntervalType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getRequestIntervalMs(Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)J
    .locals 2
    .parameter "intervalType"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->getGservicesKey()Lcom/android/vending/util/GservicesValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static intervalPassed(Landroid/content/Context;Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)Z
    .locals 2
    .parameter "context"
    .parameter "intervalType"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->getLastRequestTimestamp()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/android/vending/util/RequestIntervalUtil;->intervalPassed(Landroid/content/Context;Lcom/android/vending/util/RequestIntervalUtil$IntervalType;J)Z

    move-result v0

    return v0
.end method

.method public static intervalPassed(Landroid/content/Context;Lcom/android/vending/util/RequestIntervalUtil$IntervalType;J)Z
    .locals 4
    .parameter "context"
    .parameter "intervalType"
    .parameter "lastRequestTime"

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p2

    .line 71
    .local v0, timeSinceLastRequest:J
    invoke-virtual {p1}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->getGservicesKey()Lcom/android/vending/util/GservicesValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 74
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setLastRequestTimestamp(Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)V
    .locals 0
    .parameter "intervalType"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->updateLastRequestTimestamp()V

    .line 93
    return-void
.end method
