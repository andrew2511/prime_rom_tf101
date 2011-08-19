.class public Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 44
    return-void
.end method

.method public onActivityDestroyed(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 47
    return-void
.end method

.method public onActivityPaused(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 50
    return-void
.end method

.method public onActivityResumed(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 53
    return-void
.end method

.method public onActivityStarted(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStopped(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 59
    return-void
.end method
