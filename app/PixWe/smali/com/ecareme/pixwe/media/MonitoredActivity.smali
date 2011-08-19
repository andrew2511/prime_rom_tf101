.class public Lcom/ecareme/pixwe/media/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleAdapter;,
        Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;

    .line 76
    .local v0, listener:Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/ecareme/pixwe/media/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    return-void

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;

    .line 84
    .local v0, listener:Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/ecareme/pixwe/media/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;

    .line 92
    .local v0, listener:Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/ecareme/pixwe/media/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 99
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;

    .line 100
    .local v0, listener:Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/ecareme/pixwe/media/MonitoredActivity;)V

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method
