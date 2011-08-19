.class public Lcom/android/vending/InvalidateAuthTokenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InvalidateAuthTokenReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/InvalidateAuthTokenReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/InvalidateAuthTokenReceiver$1;-><init>(Lcom/android/vending/InvalidateAuthTokenReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    return-void
.end method
