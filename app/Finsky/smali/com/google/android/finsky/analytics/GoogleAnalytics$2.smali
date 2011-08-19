.class Lcom/google/android/finsky/analytics/GoogleAnalytics$2;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/GoogleAnalytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/GoogleAnalytics;

.field final synthetic val$cookie:Ljava/lang/String;

.field final synthetic val$event:Lcom/google/android/finsky/analytics/Analytics$Event;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/GoogleAnalytics;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->this$0:Lcom/google/android/finsky/analytics/GoogleAnalytics;

    iput-object p2, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$event:Lcom/google/android/finsky/analytics/Analytics$Event;

    iput-object p4, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$cookie:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$event:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/Analytics$Event;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;->val$cookie:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    return-void
.end method
