.class public interface abstract Lcom/google/android/finsky/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/analytics/Analytics$Event;
    }
.end annotation


# virtual methods
.method public abstract reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportPageView(Ljava/lang/String;)V
.end method

.method public abstract reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V
.end method
