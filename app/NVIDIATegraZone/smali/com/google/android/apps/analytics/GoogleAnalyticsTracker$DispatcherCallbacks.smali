.class final Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTracker.java"

# interfaces
.implements Lcom/google/android/apps/analytics/Dispatcher$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DispatcherCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchFinished()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->access$000(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public eventDispatched(J)V
    .locals 1
    .parameter "eventId"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->access$100(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Lcom/google/android/apps/analytics/EventStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/analytics/EventStore;->deleteEvent(J)V

    .line 321
    return-void
.end method
