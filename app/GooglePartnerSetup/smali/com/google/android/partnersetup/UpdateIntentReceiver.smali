.class public Lcom/google/android/partnersetup/UpdateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/android/partnersetup/GooglePartnerSetup;->setClientId(Landroid/content/Context;)V

    .line 58
    return-void
.end method
