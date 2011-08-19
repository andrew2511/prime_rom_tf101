.class Lcom/google/android/finsky/analytics/GoogleAnalytics$1;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/GoogleAnalytics;->reportPageView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/GoogleAnalytics;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/GoogleAnalytics;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$1;->this$0:Lcom/google/android/finsky/analytics/GoogleAnalytics;

    iput-object p2, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 59
    return-void
.end method
