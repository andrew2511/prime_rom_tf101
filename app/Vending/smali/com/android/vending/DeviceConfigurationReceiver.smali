.class public Lcom/android/vending/DeviceConfigurationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceConfigurationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/DeviceConfigurationReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/android/vending/DeviceConfigurationReceiver$1;-><init>(Lcom/android/vending/DeviceConfigurationReceiver;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    return-void
.end method
