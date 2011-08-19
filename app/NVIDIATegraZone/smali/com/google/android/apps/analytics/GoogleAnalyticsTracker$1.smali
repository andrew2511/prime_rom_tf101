.class Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 44
    return-void
.end method
