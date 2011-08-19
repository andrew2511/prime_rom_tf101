.class public Lcom/android/exchange/service/ExchangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void
.end method
