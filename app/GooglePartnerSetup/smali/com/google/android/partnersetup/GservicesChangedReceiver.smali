.class public Lcom/google/android/partnersetup/GservicesChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesChangedReceiver.java"


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
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/android/partnersetup/GooglePartnerSetup;->setClientId(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lcom/google/android/partnersetup/AppHiderService;->startSetVisibilityService(Landroid/content/Context;)V

    .line 36
    return-void
.end method
