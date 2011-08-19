.class public Lcom/google/android/music/tutorial/SignupTickleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignupTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheckClearHoldoff(Landroid/content/Context;)V

    .line 23
    return-void
.end method
