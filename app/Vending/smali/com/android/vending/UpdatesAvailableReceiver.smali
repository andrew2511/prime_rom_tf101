.class public Lcom/android/vending/UpdatesAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdatesAvailableReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    const-string v0, "Received updates available notification"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/CheckinUpdater;->checkForUpdates()V

    .line 19
    return-void
.end method
