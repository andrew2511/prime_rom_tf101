.class public Lcom/google/android/finsky/analytics/StubAnalytics;
.super Ljava/lang/Object;
.source "StubAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 19
    return-void
.end method

.method public reportPageView(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 11
    return-void
.end method

.method public reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "cookie"

    .prologue
    .line 15
    return-void
.end method
